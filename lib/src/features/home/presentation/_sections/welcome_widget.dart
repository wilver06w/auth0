part of 'package:auth0/src/features/home/presentation/page.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
    required this.user,
  });

  final UserProfile? user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        Auth0SpacingFoundation.md,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.current.welcome,
                      style: GoogleFonts.spaceGrotesk(
                        foreground: Paint()
                          ..shader = Auth0noPayClientUi.linearGradient,
                        fontSize: Auth0Responsive.withSizeByContext(
                          context,
                          pixels: 25,
                        ),
                        height: 0.8,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      user?.name ?? '',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: Auth0Responsive.withSizeByContext(
                          context,
                          pixels: 30,
                        ),
                        height: 0.8,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              if (user?.pictureUrl != null)
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 12,
                  ),
                  child: CircleAvatar(
                    radius: 56,
                    child: ClipOval(
                      child: Image.network(
                        (user?.pictureUrl ?? '').toString(),
                        fit: BoxFit.cover,
                        width: Auth0Responsive.withSizeByContext(
                          context,
                          pixels: 95,
                        ),
                        height: Auth0Responsive.heightSizeByContext(
                          context,
                          pixels: 95,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Gap(
            Auth0Responsive.heightSizeByContext(
              context,
              pixels: Auth0SpacingFoundation.md,
            ),
          ),
          BodyUserWidget(
            user: user,
          ),
        ],
      ),
    );
  }
}
