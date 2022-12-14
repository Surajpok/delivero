import 'package:delivero/imports.dart';
import 'package:delivero/view/intro_screen/intro_slide2.dart';
import 'package:delivero/view/intro_screen/intro_slide3.dart';
import 'package:delivero/view/intro_screen/intro_slide1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});
  static const String routeName = '/intro';

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Material(
      color: ColorName.backgroundColor,
      child: Stack(
        children: [
          PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,

            // children: List.generate(
            //   3,
            //   (index) => Image.asset(
            //     'assets/images/introimg${index}.png',
            //     fit: BoxFit.contain,
            //     alignment: Alignment.center,
            //   ),
            // ),
            children: const [
              IntroSlide1(),
              IntroSlide2(),
              IntroSlide3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.3),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const SlideEffect(
                dotColor: ColorName.tertaryAccent,
                activeDotColor: ColorName.primaryAccent,
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: ScreenSize.screenHeight * 0.2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyElevatedButton(
                height: ScreenSize.screenHeight * 0.07,
                width: double.infinity,
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
                child: const Text('Create An Account'),
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: ScreenSize.screenHeight * 0.11,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyTextButton(
                height: ScreenSize.screenHeight * 0.07,
                width: double.infinity,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
                child: const Text('Login'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
