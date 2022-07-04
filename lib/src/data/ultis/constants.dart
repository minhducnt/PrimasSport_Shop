part of ultis;

class AppColors {
  static const kPrimaryColor = Color(0xff4E944F);
  static const kSecondaryColor = Color(0xff83BD75);
  static const kScaffoldColor = Color(0xffeff2f7);
  static const kTextColor = Color(0xFF757575);
  static const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xff83BD75), Color(0xffB4E197)],
  );
}

class TextStyles {
  static TextStyle kTitleStyle =
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600);
  static TextStyle kLabelStyle =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);
}

class Margin {
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 12.0;
}

class FormError {
  final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String kEmailNullError = "Please Enter your email";
  static const String kInvalidEmailError = "Please Enter Valid Email";
  static const String kPassNullError = "Please Enter your password";
  static const String kShortPassError = "Password is too short";
  static const String kMatchPassError = "Passwords don't match";
  static const String kNameNullError = "Please Enter your name";
  static const String kPhoneNumberNullError = "Please Enter your phone number";
  static const String kAddressNullError = "Please Enter your address";
}

var appBar2 = AppBar(
  leading: IconButton(
    onPressed: () {},
    icon: SvgPicture.asset(
      "assets/icons/logo.svg",
      width: 50,
      height: 50,
    ),
  ),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Primas',
              style: TextStyle(
                  color: AppColors.kSecondaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            TextSpan(
              text: ' Sport',
              style: TextStyle(
                  letterSpacing: 1.2,
                  fontSize: 28,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    ],
  ),
  actions: [
    IconButton(
      icon: SvgPicture.asset("assets/icons/notification.svg"),
      onPressed: () {},
    ),
  ],
);
