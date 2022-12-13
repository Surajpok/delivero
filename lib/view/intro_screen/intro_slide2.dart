import 'package:delivero/imports.dart';

class IntroSlide2 extends StatelessWidget {
  const IntroSlide2({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                  height: IconSizes.avatar,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
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
            height: ScreenSize.screenHeight * 0.05,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'Order from your favourite stores or vendors',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: ColorName.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: ScreenSize.screenHeight * 0.03,
          ),
          Image.asset(
            Assets.images.introimg1.path,
            height: ScreenSize.screenHeight * 0.35,
          ),
        ],
      ),
    );
  }
}
