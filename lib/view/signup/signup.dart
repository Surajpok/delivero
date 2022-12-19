import 'package:delivero/imports.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: SizedBox(
                    width: UiSize.sizedBoxWidth,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    Assets.icons.icon.path,
                    height: IconSizes.topIcon,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/bottom_nav');
                    },
                    child: const Text(
                      'skip',
                      style: TextStyle(
                          color: ColorName.textButtonColor,
                          fontSize: FontSizes.subheading),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: Paddings.content),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Create an account",
                        style: TextStyle(
                          fontSize: FontSizes.headline1,
                          fontWeight: FontWeight.w700,
                          color: ColorName.black,
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
                      ),
                      const Text(
                        "Welcome friend, enter your details so lets get started in ordering food.",
                        style: TextStyle(
                          fontSize: FontSizes.headline3,
                          fontWeight: FontWeight.normal,
                          color: ColorName.black,
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
                      ),
                      Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Email Address",
                              style: TextStyle(
                                fontSize: FontSizes.headline3,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenSize.screenHeight *
                                UiSize.sizedBoxSmallPaddingHeight,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Enter your email",
                            ),
                          ),
                          SizedBox(
                            height: ScreenSize.screenHeight *
                                UiSize.sizedBoxPaddingHeight,
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                fontSize: FontSizes.headline3,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenSize.screenHeight *
                                UiSize.sizedBoxSmallPaddingHeight,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Enter Password",
                            ),
                          ),
                          SizedBox(
                            height: ScreenSize.screenHeight *
                                UiSize.sizedBoxPaddingHeight,
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Conform Passwoed",
                              style: TextStyle(
                                fontSize: FontSizes.headline3,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenSize.screenHeight *
                                UiSize.sizedBoxSmallPaddingHeight,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Conform password",
                            ),
                          ),
                          SizedBox(
                            height:
                                ScreenSize.screenHeight * UiSize.sizedBoxHeight,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: MyElevatedButton(
                              height: ScreenSize.screenHeight * 0.07,
                              width: double.infinity,
                              onPressed: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              borderRadius: BorderRadius.circular(
                                  RadiusSize.buttonRadius),
                              child: const Text('Create an account'),
                            ),
                          ),
                          SizedBox(
                            height: ScreenSize.screenHeight *
                                UiSize.sizedBoxPaddingHeight,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: MyTextButton(
                              height: ScreenSize.screenHeight * 0.07,
                              width: double.infinity,
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              borderRadius: BorderRadius.circular(
                                  RadiusSize.buttonRadius),
                              child: const Text('Login to my account'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
