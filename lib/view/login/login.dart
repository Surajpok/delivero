import 'package:delivero/imports.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String routeName = '/login';

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
                      Navigator.pushNamed(context, '/bottom_nav');
                    },
                    borderRadius:
                        BorderRadius.circular(RadiusSize.buttonRadius),
                    child: const Text('skip'),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Login to your account",
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
                          "Good to see you again, enter your details below to continue ordering.",
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
                                hintText: "Enter email",
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Password",
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
                                hintText: "Password",
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/forgot');
                                },
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(fontSize: 16),
                                ),
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
                                  Navigator.pushNamed(context, '/login');
                                },
                                borderRadius: BorderRadius.circular(
                                    RadiusSize.buttonRadius),
                                child: const Text('Login'),
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
                                  Navigator.pushNamed(context, '/signup');
                                },
                                borderRadius: BorderRadius.circular(
                                    RadiusSize.buttonRadius),
                                child: const Text('Create my new account'),
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
