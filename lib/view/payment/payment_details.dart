import 'package:delivero/imports.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _CartState();
}

class _CartState extends State<PaymentDetails> {
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
          "Card Details",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxSmallPaddingHeight,
      ),
      const MyFormFeild(
        hintText: "Enter card details",
      ),
      SizedBox(
        height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Exp date",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenSize.screenHeight *
                      UiSize.sizedBoxSmallPaddingHeight,
                ),
                const MyFormFeild(
                  hintText: "DD/MM",
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "CVV",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenSize.screenHeight *
                      UiSize.sizedBoxSmallPaddingHeight,
                ),
                const MyFormFeild(
                  hintText: "CVV",
                ),
              ],
            ),
          ),
        ],
      )
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
                Navigator.pushNamed(context, '/payment_success');
              },
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
              child: const Text('Pay now'),
            ),
          ),
        ],
      ),
    ),
  );
}
