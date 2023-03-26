import 'package:delivero/imports.dart';
import 'package:delivero/resources/firebase_auth_methods.dart';
import 'package:delivero/utils/show_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
  }

  void signUpUser() async {
    if (_passwordController.text == _rePasswordController.text) {
      FirebaseAuthMethods().sighUpwithEmail(
        email: _emailController.text,
        password: _passwordController.text,
        context: context,
      );
    } else {
      showSnakBar(context, "Passwords Aren't Matching");
    }
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
                      Assets.icons.icon.path,
                      height: IconSizes.topIcon,
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
                  height:
                      ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Column(
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
                          height: ScreenSize.screenHeight *
                              UiSize.sizedBoxPaddingHeight,
                        ),
                        const Text(
                          "Welcome friend, enter your details and lets get started in ordering food.",
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
                              hintTextString: 'Enter Email',
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
                            SizedBox(
                              height: ScreenSize.screenHeight *
                                  UiSize.sizedBoxSmallPaddingHeight,
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
                            CustomTextInput(
                              textEditController: _rePasswordController,
                              hintTextString: 'Conform Password',
                              inputType: InputType.Password,
                              enableBorder: true,
                              maxLength: 16,
                              prefixIcon: Icon(Icons.lock,
                                  color: Theme.of(context).primaryColor),
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
                                onPressed: signUpUser,
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
