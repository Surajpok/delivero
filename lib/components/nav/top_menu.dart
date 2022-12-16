import 'package:delivero/imports.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          color: ColorName.white,
          borderRadius: BorderRadius.circular(RadiusSize.categoryBorderRadius),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              Assets.icons.menu.path,
              width: IconSizes.avatar,
            ),
          ),
        ),
        Column(
          children: const [
            Text(
              "Delivery To",
              style: TextStyle(
                fontSize: FontSizes.headline2,
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              "lekki phase 1, Estate",
              style: TextStyle(
                  fontSize: FontSizes.intro, color: ColorName.textButtonColor),
            ),
          ],
        ),
        Material(
          borderRadius: BorderRadius.circular(RadiusSize.categoryBorderRadius),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              Assets.icons.avatar.path,
              fit: BoxFit.cover,
              width: IconSizes.avatar,
            ),
          ),
        ),
      ],
    );
  }
}
