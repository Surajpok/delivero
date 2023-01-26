import 'package:delivero/imports.dart';

class SignUp extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Paddings.content,
          ),
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
                  height:
                      ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight),
              ListView(
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
