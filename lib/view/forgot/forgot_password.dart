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
                    width: 30,
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
            SizedBox(height: 30),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Enter your email address to request a password reset.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Column(
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Email Address",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Enter your email",
                              ),
                            ),
                            const SizedBox(
                              height: 80.0,
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
                            const SizedBox(
                              height: 20.0,
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
