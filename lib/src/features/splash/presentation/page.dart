import 'package:auth0/generated/l10n.dart';
import 'package:auth0/src/features/splash/domain/usecases/getcredentials_usecase.dart';
import 'package:auth0/src/features/splash/presentation/bloc/bloc.dart';
import 'package:auth0/src/shared/auth_provider.dart';
import 'package:auth0/src/shared/tokens/colors.dart';
import 'package:auth0/src/shared/tokens/spacing.dart';
import 'package:auth0/src/shared/tokens/text/text.dart';
import 'package:auth0/src/shared/utils/auth0_ui.dart';
import 'package:auth0/src/shared/utils/navigation.dart';
import 'package:auth0/src/shared/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    final getCredentialsSplashUseCase =
        Modular.get<GetCredentialsSplashUseCase>();
    final authProvider = Provider.of<AuthProvider>(context);

    return BlocProvider<BlocSplash>(
      create: (context) => BlocSplash(
        authProvider: authProvider,
        getCredentialsSplashUseCase: getCredentialsSplashUseCase,
      )..add(LoadInfoUserEvent()),
      child: BlocListener<BlocSplash, SplashState>(
        listener: _listener,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.network(
                  Auth0noPayClientUi.logoPragma,
                  colorFilter: const ColorFilter.mode(
                    Auth0Colors.grape,
                    BlendMode.srcIn,
                  ),
                  width: Auth0Responsive.withSizeByContext(
                    context,
                    pixels: 280,
                  ),
                  height: Auth0Responsive.heightSizeByContext(
                    context,
                    pixels: 200,
                  ),
                ),
              ),
              Gap(
                Auth0Responsive.heightSizeByContext(
                  context,
                  pixels: Auth0SpacingFoundation.md,
                ),
              ),
              Auth0TextHeading3(
                S.current.titleLogin.toUpperCase(),
                color: Auth0Colors.black,
                weight: FontWeight.w600,
              ),
              Gap(
                Auth0Responsive.heightSizeByContext(
                  context,
                  pixels: Auth0SpacingFoundation.xl,
                ),
              ),
              BlocBuilder<BlocSplash, SplashState>(
                builder: (context, state) {
                  return state is LoadingInfoUserState
                      ? const CircularProgressIndicator(
                          color: Auth0Colors.black,
                        )
                      : const SizedBox.shrink();
                },
              ),
              BlocBuilder<BlocSplash, SplashState>(
                buildWhen: (previous, current) =>
                    current is LoadedInfoUserState,
                builder: (context, state) {
                  if (state is LoadedInfoUserState) {
                    return Auth0TextHeading5(
                      '${S.current.welcome} ${authProvider.credentials?.user.name}',
                      color: Auth0Colors.black,
                      weight: FontWeight.w600,
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _listener(BuildContext context, SplashState state) async {
  if (state is LoadedInfoUserState || state is ErrorInfoUserState) {
    Future.delayed(
      const Duration(
        seconds: 5,
      ),
      () {
        Auth0Route.navHome();
      },
    );
  }
}
