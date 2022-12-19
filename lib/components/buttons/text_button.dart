import 'package:delivero/imports.dart';

class MyTextButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final Widget child;

  const MyTextButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
      ),
      child: SizedBox(
        height: height,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            foregroundColor: ColorName.textButtonColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            textStyle: const TextStyle(
              fontSize: FontSizes.highlighter,
              fontWeight: FontWeight.w700,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
