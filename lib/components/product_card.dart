import 'package:delivero/imports.dart';

class ProductCard extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double width;
  final double height;
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
    this.width = 0,
    this.height = 44.0,
    // required this.child,
    this.title = '',
    this.desc = '',
    this.image = '',
    this.star = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      padding: const EdgeInsets.all(Paddings.normal),
      decoration: const BoxDecoration(
        color: ColorName.gradientFirst,
        borderRadius: BorderRadius.all(
          Radius.circular(RadiusSize.cardBorderRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            image,
            width: 400,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                desc,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text(
                    star.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    './assets/icons/heart.png',
                    fit: BoxFit.cover,
                    width: 18,
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
