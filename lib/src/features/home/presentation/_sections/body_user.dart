part of 'package:auth0/src/features/home/presentation/page.dart';

class BodyUserWidget extends StatelessWidget {
  const BodyUserWidget({
    super.key,
    required this.user,
  });

  final UserProfile? user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          UserTitleValueWidget(
            propertyName: Auth0noPayClientUi.idTitle,
            propertyValue: user?.sub ?? '',
          ),
          UserTitleValueWidget(
            propertyName: S.current.name,
            propertyValue: user?.name ?? '',
          ),
          UserTitleValueWidget(
            propertyName: S.current.email,
            propertyValue: user?.email ?? '',
          ),
          UserTitleValueWidget(
            propertyName: '${S.current.emailVerified}?',
            propertyValue: (user?.isEmailVerified ?? false)
                ? S.current.yes
                : S.current.not,
          ),
          UserTitleValueWidget(
            propertyName: S.current.updatedAt,
            propertyValue:
                (user?.updatedAt ?? DateTime.now()).toIso8601String(),
          ),
        ],
      ),
    );
  }
}

class UserTitleValueWidget extends StatelessWidget {
  final String propertyName;
  final String propertyValue;

  const UserTitleValueWidget({
    required this.propertyName,
    required this.propertyValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Auth0TextLarge(
            propertyName,
          ),
          Auth0TextLarge(
            propertyValue,
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
