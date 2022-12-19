import 'package:delivero/imports.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _CartState();
}

class _CartState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                const SliverPadding(
                  padding: EdgeInsets.only(
                    left: Paddings.minimum,
                    right: Paddings.minimum,
                  ),
                  sliver: SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    flexibleSpace: TopMenu(),
                    // MainAppBar.defaultAppBar(context),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(20),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      ((context, index) => _buildBody(context)),
                      childCount: 1,
                    ),
                  ),
                ),
              ],
            ),
            _buldFloatBar(context)
          ],
        ),
      ),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return Column(
    children: [
      Image.asset(
        Assets.images.success.path,
        height: IconSizes.successImage,
      ),
      const Text(
        "Your order has been successfully placed",
        style: TextStyle(
          fontSize: FontSizes.headline2,
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  );
}

Widget _buldFloatBar(BuildContext context) {
  return Positioned(
    bottom: 10,
    left: 0,
    right: 0,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: Paddings.content),
      child: Column(
        children: [
          SizedBox(
            child: MyElevatedButton(
              width: double.infinity,
              height: ScreenSize.screenHeight * 0.07,
              onPressed: () {
                Navigator.pushNamed(context, '/bottom_nav');
              },
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
              child: const Text('Go back to home'),
            ),
          ),
        ],
      ),
    ),
  );
}
