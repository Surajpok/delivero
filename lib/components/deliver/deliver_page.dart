import 'package:delivero/imports.dart';

class DeliverPage extends StatefulWidget {
  const DeliverPage({super.key});

  @override
  State<DeliverPage> createState() => _DeliverPageState();
}

class _DeliverPageState extends State<DeliverPage> {
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
      const Align(
        alignment: Alignment.topLeft,
        child: Text(
          "Delivery Method",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 3,
            child: Text('137 Teaticket Hwy, East Falmouth MA 2536'),
          ),
          Expanded(
            flex: 1,
            child: MyTextButton(
              height: ScreenSize.screenHeight * 0.07,
              width: double.infinity,
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
              child: const Text('Change'),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 3,
            child: Text('+234 9011039271'),
          ),
          Expanded(
            flex: 1,
            child: MyTextButton(
              height: ScreenSize.screenHeight * 0.07,
              width: double.infinity,
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
              child: const Text('Change'),
            ),
          ),
        ],
      ),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
      ),
      const Align(
        alignment: Alignment.topLeft,
        child: Text(
          "Payment",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
            ),
            child: Image.asset(
              Assets.icons.addcircle.path,
              height: IconSizes.deliverImage,
              width: IconSizes.deliverImage,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
            ),
            child: Image.asset(
              Assets.icons.mastercard.path,
              height: IconSizes.deliverImage,
              width: IconSizes.deliverImage,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
            ),
            child: Image.asset(
              Assets.icons.paypal.path,
              height: IconSizes.deliverImage,
              width: IconSizes.deliverImage,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
            ),
            child: Image.asset(
              Assets.icons.stripe.path,
              height: IconSizes.deliverImage,
              width: IconSizes.deliverImage,
            ),
          ),
        ],
      ),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxHeight * 2,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Delivery Fee",
            style: TextStyle(fontSize: FontSizes.highlighter),
          ),
          Text(
            "Rs.50",
            style: TextStyle(
              fontSize: FontSizes.highlighter,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Subtotal",
            style: TextStyle(fontSize: FontSizes.highlighter),
          ),
          Text(
            "Rs.520",
            style: TextStyle(
              fontSize: FontSizes.highlighter,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Total",
            style: TextStyle(fontSize: FontSizes.highlighter),
          ),
          Text(
            "Rs.520",
            style: TextStyle(
              fontSize: FontSizes.headline1,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
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
                Navigator.pushNamed(context, '/payment_details');
              },
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
              child: const Text('Proceed to payment'),
            ),
          ),
        ],
      ),
    ),
  );
}
