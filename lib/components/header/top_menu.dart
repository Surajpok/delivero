import 'package:delivero/imports.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        fontSize: FontSizes.intro,
                        color: ColorName.textButtonColor),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Material(
            borderRadius:
                BorderRadius.circular(RadiusSize.categoryBorderRadius),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                Assets.icons.avatar.path,
                fit: BoxFit.contain,
                width: IconSizes.avatar,
              ),
            ),
          ),
        ],
      );
}
