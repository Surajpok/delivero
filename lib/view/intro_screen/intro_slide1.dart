import 'package:delivero/imports.dart';

class IntroSlide1 extends StatelessWidget {
  const IntroSlide1({super.key});

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
            height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: Paddings.content,
              right: Paddings.content,
            ),
            child: Text(
              'Order from your favourite stores or vendors',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: FontSizes.headline1,
                  color: ColorName.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
          ),
          Image.asset(
            Assets.images.introimg0.path,
            height: ScreenSize.screenHeight * 0.3,
          ),
        ],
      ),
    );
  }
}
