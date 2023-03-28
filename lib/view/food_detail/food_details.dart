import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivero/imports.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FoodDetails extends StatefulWidget {
  final DocumentSnapshot<Map<String, dynamic>> documentSnapshot;
  const FoodDetails({super.key, required this.documentSnapshot});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
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
                      ((context, index) =>
                          _buildBody(context, widget.documentSnapshot)),
                      childCount: 1,
                    ),
                  ),
                ),
              ],
            ),
            _buldFloatBar(context, widget.documentSnapshot),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context,
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: ScreenSize.screenHeight * UiSize.singleProductCardHeight,
              width: double.maxFinite,
              child: SizedBox(
                child: Image.network(
                  documentSnapshot.get('image'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  documentSnapshot.get('name'),
                  style: TextStyle(
                    fontSize: FontSizes.headline1,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  width: ScreenSize.screenWidth * 0.28,
                  height: ScreenSize.screenHeight * 0.06,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      ColorName.gradientFirst,
                      ColorName.gradientSecond
                    ]),
                    borderRadius:
                        BorderRadius.circular(RadiusSize.roundButtonRadius),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        splashColor: ColorName.tertaryAccent,
                        child: const Icon(
                          Icons.remove,
                          color: ColorName.white,
                          size: IconSizes.smallIcon,
                        ),
                      ),
                      const Text(
                        "2",
                        style: TextStyle(
                          fontSize: FontSizes.placeholder,
                          fontWeight: FontWeight.w700,
                          color: ColorName.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        splashColor: Colors.green,
                        child: const Icon(
                          MyIcons.add,
                          color: ColorName.white,
                          size: IconSizes.smallIcon,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Paddings.content,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Size',
                      style: TextStyle(
                        fontSize: FontSizes.headline3,
                      ),
                    ),
                    Text(
                      'Medium',
                      style: TextStyle(
                        fontSize: FontSizes.headline2,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Calories',
                      style: TextStyle(
                        fontSize: FontSizes.headline3,
                      ),
                    ),
                    Text(
                      '150 Kcal',
                      style: TextStyle(
                        fontSize: FontSizes.headline2,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Cooking',
                      style: TextStyle(
                        fontSize: FontSizes.headline3,
                      ),
                    ),
                    Text(
                      '5-10 Min',
                      style: TextStyle(
                        fontSize: FontSizes.headline2,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: Paddings.content,
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: 150,
              ),
              child: ExpandableText(
                documentSnapshot.get('desc'),
                style: TextStyle(
                  fontSize: FontSizes.headline3,
                ),
                expandText: 'See More',
                collapseText: 'See Less',
                maxLines: 5,
                linkStyle: TextStyle(
                    color: ColorName.gradientSecond,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: Paddings.content,
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.075,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: ScreenSize.screenWidth * 0.4,
                    margin: const EdgeInsets.only(right: Paddings.content),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorName.textButtonColor,
                        width: 1.0,
                      ),
                      color: ColorName.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(RadiusSize.cardBorderRadius),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            Assets.images.burger.path,
                            height: 40,
                            fit: BoxFit.fitHeight,
                          ),
                          const Text("Cheese"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buldFloatBar(
      context, DocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: Margins.normal),
        padding: const EdgeInsets.symmetric(
            vertical: Paddings.normal, horizontal: Paddings.content),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: ColorName.secondaryAccent,
              blurRadius: 50,
              offset: Offset(1, 1), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.circular(
            (RadiusSize.buttonRadius),
          ),
          color: ColorName.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: FontSizes.headline3,
                  ),
                ),
                Text(
                  "Rs. " + documentSnapshot.get("price").toString(),
                  style: TextStyle(
                      fontSize: FontSizes.headline1,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              child: MyElevatedButton(
                width: ScreenSize.screenWidth * 0.45,
                height: ScreenSize.screenHeight * 0.06,
                onPressed: () {
                  Navigator.pushNamed(context, '/deliver');
                },
                borderRadius:
                    BorderRadius.circular(RadiusSize.roundButtonRadius),
                child: const Text('Place Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
