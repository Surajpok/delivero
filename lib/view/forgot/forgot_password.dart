import 'package:delivero/imports.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                    'assets/icons/icon.png',
                    height: 30,
                  ),
                ),
                Expanded(
                  child: MyTextButton(
                    height: ScreenSize.screenHeight * 0.07,
                    width: double.infinity,
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    borderRadius:
                        BorderRadius.circular(RadiusSize.buttonRadius),
                    child: const Text('cancel'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
            ),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(RadiusSize.containerRadius),
                      topRight: Radius.circular(RadiusSize.containerRadius),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: Paddings.content,
                        horizontal: Paddings.content),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Forgot Password",
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
                          "Enter your email address to request a password reset.",
                          textAlign: TextAlign.center,
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
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Enter your email",
                              ),
                            ),
                            SizedBox(
                              height: ScreenSize.screenHeight *
                                  UiSize.sizedBoxHeight *
                                  2,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: MyElevatedButton(
                                height: ScreenSize.screenHeight * 0.07,
                                width: double.infinity,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/otp');
                                },
                                borderRadius: BorderRadius.circular(
                                    RadiusSize.buttonRadius),
                                child: const Text('Get Code'),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
