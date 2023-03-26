import 'package:delivero/imports.dart';
import 'package:pinput/pinput.dart';

void showOTPDialog({
  required BuildContext context,
  required TextEditingController codeController,
  required VoidCallback onPressed,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height:
                        ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
                  ),
                  const Text(
                    "OTP Verification",
                    style: TextStyle(
                        fontSize: FontSizes.headline1,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight *
                        UiSize.sizedBoxSmallPaddingHeight,
                  ),
                  const Text(
                    "A login code has been sent to your phone",
                    style: TextStyle(
                      fontSize: FontSizes.headline3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
                  ),
                  const Text(
                    "Enter code",
                    style: TextStyle(
                      fontSize: FontSizes.headline3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight *
                        UiSize.sizedBoxSmallPaddingHeight,
                  ),
                  Pinput(
                    length: 6,
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: const TextStyle(
                          fontSize: FontSizes.headline1,
                          color: ColorName.black,
                          fontWeight: FontWeight.w700),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorName.tertaryAccent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    // focusedPinTheme: focusedPinTheme,
                    // submittedPinTheme: submittedPinTheme,

                    showCursor: true,
                    controller: codeController,
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: onPressed,
          child: MyElevatedButton(
            height: ScreenSize.screenHeight * 0.07,
            width: double.infinity,
            onPressed: onPressed,
            borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
            child: const Text('Done'),
          ),
        ),
      ],
    ),
  );
}
