import 'package:delivero/imports.dart';
import 'package:expandable_text/expandable_text.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({super.key});

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
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: ScreenSize.screenHeight * UiSize.singleProductCardHeight,
            width: ScreenSize.screenWidth * UiSize.singleProductCardWidth,
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius:
                  BorderRadius.circular(RadiusSize.singleProductBorderRadius),
              boxShadow: const [
                BoxShadow(
                  color: ColorName.secondaryAccent,
                  blurRadius: 20.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                ),
              ],
            ),
            child: SizedBox(
              child: Image.asset(
                Assets.images.burger.path,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
          ),
          Container(
            width: ScreenSize.screenWidth * 0.28,
            height: ScreenSize.screenHeight * 0.07,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [ColorName.gradientFirst, ColorName.gradientSecond]),
              borderRadius: BorderRadius.circular(RadiusSize.roundButtonRadius),
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
          SizedBox(
            height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
          ),
          const Text(
            "Big boys cheese burger",
            style: TextStyle(
              fontSize: FontSizes.headline1,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: Paddings.minimum,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: const [
                    Icon(
                      MyIcons.star,
                      color: ColorName.gradientSecond,
                    ),
                    Text(
                      '4+',
                      style: TextStyle(
                        fontSize: FontSizes.headline3,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: const [
                    Icon(
                      MyIcons.fire,
                      color: ColorName.gradientSecond,
                    ),
                    Text(
                      '300 cal',
                      style: TextStyle(
                        fontSize: FontSizes.headline3,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  Icon(
                    MyIcons.clock,
                    color: ColorName.gradientSecond,
                  ),
                  Text(
                    '5-10 min',
                    style: TextStyle(
                      fontSize: FontSizes.headline3,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: Paddings.content,
          ),
          const ExpandableText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet',
            style: TextStyle(
              fontSize: FontSizes.headline3,
            ),
            expandText: 'more',
            collapseText: 'view less',
            maxLines: 4,
            linkStyle: TextStyle(
                color: ColorName.gradientSecond, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: Paddings.normal,
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

Widget _buldFloatBar(context) {
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Paddings.content),
          child: SizedBox(
            child: MyElevatedButton(
              width: double.infinity,
              height: ScreenSize.screenHeight * 0.07,
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
              child: const Text('Add to cart'),
            ),
          ),
        ),
      ],
    ),
  );
}
