import 'package:auth0/generated/l10n.dart';
import 'package:auth0/src/features/home/domain/usecases/getcredentials_usecase.dart';
import 'package:auth0/src/features/home/domain/usecases/login_credentials_usecase.dart';
import 'package:auth0/src/features/home/domain/usecases/logout_user_usecase.dart';
import 'package:auth0/src/features/home/presentation/bloc/bloc.dart';
import 'package:auth0/src/shared/atoms/button/btn.dart';
import 'package:auth0/src/shared/auth_provider.dart';
import 'package:auth0/src/shared/tokens/colors.dart';
import 'package:auth0/src/shared/tokens/spacing.dart';
import 'package:auth0/src/shared/tokens/text/text.dart';
import 'package:auth0/src/shared/utils/auth0_ui.dart';
import 'package:auth0/src/shared/utils/loading.dart';
import 'package:auth0/src/shared/utils/navigation.dart';
import 'package:auth0/src/shared/utils/responsive.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

part 'package:auth0/src/features/home/presentation/_sections/welcome_widget.dart';
part 'package:auth0/src/features/home/presentation/_sections/body_user.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final getCredentialsSplashUseCase =
        Modular.get<GetCredentialsHomeUseCase>();
    final setLoginCredentialsHomeUseCase =
        Modular.get<SetLoginCredentialsHomeUseCase>();
    final setLogoutHomeUseCase = Modular.get<SetLogoutHomeUseCase>();

    return BlocProvider<BlocHome>(
      create: (context) => BlocHome(
        authProvider: authProvider,
        getCredentialsSplashUseCase: getCredentialsSplashUseCase,
        setLoginCredentialsHomeUseCase: setLoginCredentialsHomeUseCase,
        setLogoutHomeUseCase: setLogoutHomeUseCase,
      )..add(LoadInfoUserEvent()),
      child: BlocListener<BlocHome, HomeState>(
        listener: _listener,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                BlocBuilder<BlocHome, HomeState>(
                  buildWhen: (previous, current) =>
                      current is LoadedInfoUserState,
                  builder: (context, state) {
                    if (state is LoadedInfoUserState) {
                      return Padding(
                        padding: const EdgeInsets.all(
                          Auth0SpacingFoundation.md,
                        ),
                        child: Column(
                          children: [
                            Gap(
                              Auth0Responsive.heightSizeByContext(
                                context,
                                pixels: Auth0SpacingFoundation.md,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox.shrink(),
                                const SizedBox.shrink(),
                                InkWell(
                                  onTap: () {
                                    context
                                        .read<BlocHome>()
                                        .add(LogoutUserEvent());
                                  },
                                  child: Auth0TextLarge(
                                    S.current.logOut,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
                SvgPicture.network(
                  Auth0noPayClientUi.logoPragma,
                  colorFilter: const ColorFilter.mode(
                    Auth0Colors.grape,
                    BlendMode.srcIn,
                  ),
                  width: Auth0Responsive.withSizeByContext(
                    context,
                    pixels: 90,
                  ),
                  height: Auth0Responsive.heightSizeByContext(
                    context,
                    pixels: 90,
                  ),
                ),
                BlocBuilder<BlocHome, HomeState>(
                  buildWhen: (previous, current) =>
                      current is LoadedInfoUserState,
                  builder: (context, state) {
                    if (state is LoadedInfoUserState) {
                      return WelcomeWidget(
                        user: authProvider.credentials?.user,
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
                Gap(
                  Auth0Responsive.heightSizeByContext(
                    context,
                    pixels: Auth0SpacingFoundation.xxl,
                  ),
                ),
                BlocBuilder<BlocHome, HomeState>(
                  buildWhen: (previous, current) =>
                      current is ErrorInfoUserState ||
                      current is LoadedInfoUserState ||
                      current is LoadedLogoutUserState,
                  builder: (context, state) {
                    if (authProvider.credentials == null) {
                      return Center(
                        child: Auth0BtnPrimary(
                          label: S.current.logIn,
                          backgroundColor: Auth0Colors.grape,
                          onTap: () {
                            context.read<BlocHome>().add(
                                  LoginUserEvent(),
                                );
                          },
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
                Gap(
                  Auth0Responsive.heightSizeByContext(
                    context,
                    pixels: Auth0SpacingFoundation.xl,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _listener(BuildContext context, HomeState state) async {
  if (state is LoadingUserLoginState ||
      state is LoadingInfoUserState ||
      state is LoadingLogoutUserState) {
    Auth0Loading.show(context);
  } else if (state is LoadedLogoutUserState) {
    Navigator.pop(context);
    Auth0Route.navAppReload();
  } else if (state is LoadedUserLoginState) {
    Navigator.pop(context);
    context.read<BlocHome>().add(
          LoadInfoUserEvent(),
        );
  } else if (state is LoadedInfoUserState) {
    Navigator.pop(context);
  } else if (state is ErrorUserLoginState ||
      state is ErrorInfoUserState ||
      state is ErrorLogoutUserState) {
    Navigator.pop(context);
  }
}
