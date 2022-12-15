import 'package:delivero/imports.dart';

class ProductCard extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double width;
  final double imagewidth;
  final String image;
  final String title;
  final String desc;
  final double star;
  final VoidCallback? onTap;
  // final Widget child;

  const ProductCard({
    Key? key,
    required this.onTap,
    this.borderRadius,
    required this.width,
    required this.imagewidth,
    // required this.child,
    required this.title,
    required this.desc,
    required this.image,
    required this.star,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      padding: const EdgeInsets.all(Paddings.normal),
      decoration: const BoxDecoration(
        color: ColorName.backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(RadiusSize.cardBorderRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            image,
            width: imagewidth,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: FontSizes.headline2,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                desc,
                style: const TextStyle(
                  fontSize: FontSizes.headline3,
                  fontWeight: FontWeight.normal,
                ),
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: ColorName.gradientFirst,
                      ),
                      Text(
                        star.toString(),
                        style: const TextStyle(
                          fontSize: FontSizes.headline3,
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Image.asset(
                    Assets.icons.heart.path,
                    fit: BoxFit.cover,
                    width: ScreenSize.screenWidth * UiSize.productIconWidth,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
