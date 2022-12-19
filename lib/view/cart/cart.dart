import 'package:delivero/imports.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Your cart",
        style: TextStyle(
          fontSize: FontSizes.headline1,
          fontWeight: FontWeight.w700,
        ),
      ),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
      ),
      const CartProduct(),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
      ),
      const CartProduct(),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
      ),
      const CartProduct(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: TextStyle(
                  fontSize: FontSizes.headline3,
                ),
              ),
              SizedBox(
                height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
              ),
              const Text(
                'Rs. 345',
                style: TextStyle(
                    fontSize: FontSizes.headline1, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            child: MyElevatedButton(
              width: double.infinity,
              height: ScreenSize.screenHeight * 0.07,
              onPressed: () {
                Navigator.pushNamed(context, '/payment_details');
              },
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
              child: const Text('Procees to payment'),
            ),
          ),
        ],
      ),
    ),
  );
}
