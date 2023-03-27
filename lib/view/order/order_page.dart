import 'package:delivero/imports.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _CartState();
}

class _CartState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: Paddings.minimum,
                    right: Paddings.minimum,
                  ),
                  sliver: SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    flexibleSpace: TopMenu(
                      uid: FirebaseAuth.instance.currentUser!.uid,
                    ),
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
        "Your orders",
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
