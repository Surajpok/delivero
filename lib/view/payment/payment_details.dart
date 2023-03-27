import 'package:delivero/imports.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PaymentDetails extends StatelessWidget {
  PaymentDetails({super.key});
  final TextEditingController _paymentController = TextEditingController();

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
            _buldFloatBar(context)
          ],
        ),
      ),
    );
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
        CustomTextInput(
          textEditController: _paymentController,
          hintTextString: 'Enter Card Number',
          inputType: InputType.PaymentCard,
          enableBorder: true,
          maxLength: 10,
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
                  CustomTextInput(
                    textEditController: _paymentController,
                    hintTextString: 'DD/MM',
                    inputType: InputType.PaymentCard,
                    enableBorder: true,
                    maxLength: 10,
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
                  CustomTextInput(
                    textEditController: _paymentController,
                    hintTextString: 'CVV',
                    inputType: InputType.PaymentCard,
                    enableBorder: true,
                    maxLength: 10,
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
}
