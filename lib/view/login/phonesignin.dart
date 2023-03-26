import 'package:delivero/imports.dart';
import 'package:delivero/resources/firebase_auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PhoneSignInPage extends StatefulWidget {
  @override
  _PhoneSignInPageState createState() => _PhoneSignInPageState();
}

class _PhoneSignInPageState extends State<PhoneSignInPage> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _phoneController.dispose();
  }

  void phoneSignIn() {
    FirebaseAuthMethods().phoneSiginIn(context, _phoneController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: Paddings.normal, horizontal: Paddings.content),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login with phone",
                    style: TextStyle(
                      fontSize: FontSizes.headline1,
                      fontWeight: FontWeight.w700,
                      color: ColorName.black,
                    ),
                  ),
                  SizedBox(
                    height:
                        ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
                  ),
                  const Text(
                    "Good to see you again, enter your phone number below to continue ordering.",
                    style: TextStyle(
                      fontSize: FontSizes.headline3,
                      fontWeight: FontWeight.normal,
                      color: ColorName.black,
                    ),
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
                  ),
                  const Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: FontSizes.headline3,
                    ),
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight *
                        UiSize.sizedBoxSmallPaddingHeight,
                  ),
                  CustomTextInput(
                    textEditController: _phoneController,
                    hintTextString: 'Enter Phone Number',
                    inputType: InputType.Number,
                    enableBorder: true,
                    maxLength: 10,
                    prefixIcon: Icon(MyIcons.phone,
                        color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: MyElevatedButton(
                      height: ScreenSize.screenHeight * 0.07,
                      width: double.infinity,
                      onPressed: phoneSignIn,
                      borderRadius:
                          BorderRadius.circular(RadiusSize.buttonRadius),
                      child: const Text('Send OTP'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
