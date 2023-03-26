import 'package:delivero/imports.dart';
import 'package:delivero/resources/firebase_auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void loginUser() {
    FirebaseAuthMethods().LoginWithEmail(
        email: _emailController.text,
        password: _passwordController.text,
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Paddings.content,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: ScreenSize.screenHeight *
                          UiSize.sizedBoxPaddingHeight,
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
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
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
                                height: ScreenSize.screenHeight *
                                    UiSize.sizedBoxHeight,
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
                                            fontWeight: FontWeight.w700,
                                            color: ColorName.gradientSecond),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenSize.screenHeight *
                                        UiSize.sizedBoxSmallPaddingHeight,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 60,
                                    child: MyElevatedButton(
                                      height: ScreenSize.screenHeight * 0.07,
                                      width: double.infinity,
                                      onPressed: loginUser,
                                      borderRadius: BorderRadius.circular(
                                          RadiusSize.buttonRadius),
                                      child: const Text('Login'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenSize.screenHeight * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Text(
                                        "Don't Have Account?",
                                        style: TextStyle(
                                          fontSize: FontSizes.headline3,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/signup');
                                        },
                                        child: const Text(
                                          'Sign Up',
                                          style: TextStyle(
                                              fontSize: FontSizes.headline3,
                                              fontWeight: FontWeight.w700,
                                              color: ColorName.gradientSecond),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: ScreenSize.screenHeight *
                                        UiSize.sizedBoxSmallPaddingHeight,
                                  ),
                                  const Text(
                                    "OR",
                                    style: TextStyle(
                                      fontSize: FontSizes.headline2,
                                      fontWeight: FontWeight.w500,
                                      color: ColorName.tertaryAccent,
                                    ),
                                  ),
                                  MyTextButton(
                                    height: ScreenSize.screenHeight * 0.07,
                                    width: ScreenSize.screenWidth,
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/phone_signin');
                                    },
                                    borderRadius: BorderRadius.circular(
                                        RadiusSize.buttonRadius),
                                    child: const Text(
                                      'Login with phone number',
                                      style: TextStyle(
                                          fontSize: FontSizes.subheading),
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
            ],
          ),
        ),
      ),
    );
  }
}
