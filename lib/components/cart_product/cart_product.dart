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
        boxShadow: [
          BoxShadow(
            color: ColorName.secondaryAccent,
            blurRadius: 1,
            offset: Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images.burger.path,
            height: IconSizes.avatar,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                  child: Text(
                    "The Macdonalds Classic Cheese Burger",
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontSize: FontSizes.headline2,
                        fontWeight: FontWeight.w700,
                        color: ColorName.black),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Classic cheese",
                    overflow: TextOverflow.clip,
                  ),
                ),
                Text(
                  "Rs. 23.99",
                  style: TextStyle(
                    fontSize: FontSizes.headline2,
                    fontWeight: FontWeight.w700,
                    color: ColorName.gradientSecond,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: ScreenSize.screenWidth * 0.26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyElevatedButton(
                  height: ScreenSize.screenHeight * 0.047,
                  width: ScreenSize.screenWidth * 0.10,
                  onPressed: () {},
                  borderRadius:
                      BorderRadius.circular(RadiusSize.counterBorderRadius),
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
                  height: ScreenSize.screenHeight * 0.047,
                  width: ScreenSize.screenWidth * 0.10,
                  onPressed: () {},
                  borderRadius:
                      BorderRadius.circular(RadiusSize.counterBorderRadius),
                  child: const Text('+'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
