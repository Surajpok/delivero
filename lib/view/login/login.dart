import 'package:delivero/imports.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginPage({super.key});
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height:
                        ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/icons/icon.png',
                    height: 30,
                  ),
                ),
                Expanded(
                  child: MyTextButton(
                    height: ScreenSize.screenHeight * 0.07,
                    width: double.infinity,
                    onPressed: () {
                      Navigator.pushNamed(context, '/bottom_nav');
                    },
                    borderRadius:
                        BorderRadius.circular(RadiusSize.buttonRadius),
                    child: const Text('skip'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
            ),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        RadiusSize.containerRadius,
                      ),
                      topRight: Radius.circular(
                        RadiusSize.containerRadius,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: Paddings.normal,
                        horizontal: Paddings.content),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Login to your account",
                          style: TextStyle(
                            fontSize: FontSizes.headline1,
                            fontWeight: FontWeight.w700,
                            color: ColorName.black,
                          ),
                        ),
                        SizedBox(
                          height: ScreenSize.screenHeight *
                              UiSize.sizedBoxPaddingHeight,
                        ),
                        const Text(
                          "Good to see you again, enter your details below to continue ordering.",
                          style: TextStyle(
                            fontSize: FontSizes.headline3,
                            fontWeight: FontWeight.normal,
                            color: ColorName.black,
                          ),
                        ),
                        SizedBox(
                          height:
                              ScreenSize.screenHeight * UiSize.sizedBoxHeight,
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
                            CustomTextInput(
                              textEditController: _emailController,
                              hintTextString: 'Enter Your Email',
                              inputType: InputType.Email,
                              enableBorder: true,
                              maxLength: 24,
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
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextInput(
                              textEditController: _passwordController,
                              hintTextString: 'Enter Password',
                              inputType: InputType.Password,
                              enableBorder: true,
                              maxLength: 16,
                              prefixIcon: Icon(Icons.lock,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/forgot');
                                },
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      fontSize: FontSizes.headline3,
                                      color: ColorName.gradientSecond),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: ScreenSize.screenHeight *
                                  UiSize.sizedBoxHeight,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: MyElevatedButton(
                                height: ScreenSize.screenHeight * 0.07,
                                width: double.infinity,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                borderRadius: BorderRadius.circular(
                                    RadiusSize.buttonRadius),
                                child: const Text('Login'),
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
                                  Navigator.pushNamed(context, '/signup');
                                },
                                borderRadius: BorderRadius.circular(
                                    RadiusSize.buttonRadius),
                                child: const Text(
                                  'Create my new account',
                                  style:
                                      TextStyle(fontSize: FontSizes.subheading),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
