import 'package:delivero/imports.dart';
import 'package:delivero/models/popular_model.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({super.key});

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Popular Foods",
              style: TextStyle(
                fontSize: FontSizes.subheading,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "View all(29)",
              style: TextStyle(
                fontSize: FontSizes.subheading,
                fontWeight: FontWeight.w400,
                color: ColorName.textButtonColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
        ),

        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: PopularProduct.products.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                width: 220,
                margin: const EdgeInsets.only(
                    right: 20, left: 5, top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: ProductCard(
                  onTap: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  title: PopularProduct.products[index].title,
                  desc: PopularProduct.products[index].desc,
                  image: PopularProduct.products[index].image,
                  star: PopularProduct.products[index].star,
                  imagewidth: ScreenSize.screenWidth * UiSize.productImageWidth,
                  width: 0,
                ),
              );
            },
          ),
        ),

//tohere
      ],
    );
  }
}
