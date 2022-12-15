import 'package:delivero/imports.dart';
import 'package:delivero/model/category_model.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            'Enjoy Delicious food',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: FontSizes.headline1, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
        ),
        SizedBox(
          height: ScreenSize.screenHeight * UiSize.categoryBoxHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // itemCount: categoryList.length,
            itemCount: Category.categories.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                width: ScreenSize.screenWidth * UiSize.categoryBoxWidth,
                margin: const EdgeInsets.only(right: Margins.normal),
                decoration: BoxDecoration(
                  border: Border.all(
                    // color: Color(0xffF0CCC1),
                    color: Color(Category.categories[index].color),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(RadiusSize.categoryBorderRadius),
                  ),
                ),
                child: Material(
                  color: ColorName.white,
                  borderRadius:
                      BorderRadius.circular(RadiusSize.categoryBorderRadius),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          // categoryList[index]['icon'],
                          Category.categories[index].icon,
                          style: const TextStyle(
                            fontSize: IconSizes.categoryItem,
                          ),
                        ),
                        Text(
                          // categoryList[index]['name'],
                          Category.categories[index].name,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: FontSizes.headline3),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
        ),
      ],
    );
  }
}
