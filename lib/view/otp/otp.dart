import 'package:delivero/imports.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: FontSizes.headline1,
          color: ColorName.black,
          fontWeight: FontWeight.w700),
      decoration: BoxDecoration(
        border: Border.all(color: ColorName.secondaryAccent),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: ColorName.secondaryAccent),
      borderRadius: BorderRadius.circular(4),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: ColorName.white,
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
              ),
              const Text(
                "Reset Password",
                style: TextStyle(
                    fontSize: FontSizes.headline1, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height:
                    ScreenSize.screenHeight * UiSize.sizedBoxSmallPaddingHeight,
              ),
              const Text(
                "A reset code has been sent to your email",
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
                height:
                    ScreenSize.screenHeight * UiSize.sizedBoxSmallPaddingHeight,
              ),
              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme: submittedPinTheme,

                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
              SizedBox(
                height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
              ),
              MyElevatedButton(
                height: ScreenSize.screenHeight * 0.07,
                width: double.infinity,
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
                child: const Text('Reset Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
