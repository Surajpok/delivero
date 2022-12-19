import 'package:delivero/imports.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.all(Paddings.normal),
      decoration: const BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.all(
          Radius.circular(RadiusSize.cardBorderRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images.burger.path,
            height: IconSizes.topIcon,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "The Macdonalds",
                style: TextStyle(
                    fontSize: FontSizes.headline1,
                    fontWeight: FontWeight.w700,
                    color: ColorName.black),
              ),
              Text("Classic cheese burger"),
              Text(
                "23.99",
                style: TextStyle(
                  fontSize: FontSizes.headline2,
                  fontWeight: FontWeight.w700,
                  color: ColorName.gradientSecond,
                ),
              ),
            ],
          ),
          MyElevatedButton(
            height: ScreenSize.screenHeight * 0.05,
            width: ScreenSize.screenWidth * 0.10,
            onPressed: () {},
            borderRadius: BorderRadius.circular(RadiusSize.counterBorderRadius),
            child: const Text('-'),
          ),
          const Text(
            "1",
            style: TextStyle(
              fontSize: FontSizes.headline2,
              fontWeight: FontWeight.w700,
            ),
          ),
          MyElevatedButton(
            height: ScreenSize.screenHeight * 0.05,
            width: ScreenSize.screenWidth * 0.10,
            onPressed: () {},
            borderRadius: BorderRadius.circular(RadiusSize.counterBorderRadius),
            child: const Text('+'),
          ),
        ],
      ),
    );
  }
}
