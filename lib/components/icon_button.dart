import 'package:delivero/imports.dart';

class MyIconButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final VoidCallback? onTap;
  final Widget child;

  const MyIconButton({
    Key? key,
    required this.onTap,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 44.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Material(
      color: ColorName.white,
      borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
      elevation: 0.4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.images.google.path),
            SizedBox(
              width: ScreenSize.screenWidth * 0.02,
            ),
            child,
          ],
        ),
      ),
    );
  }
}
