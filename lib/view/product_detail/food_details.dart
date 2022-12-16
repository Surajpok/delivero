import 'package:delivero/view/home_screen/home_page.dart';
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
        child: Padding(
          padding: const EdgeInsets.only(
              left: Paddings.content, right: Paddings.content),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TopMenu(),
              Container(
                height:
                    ScreenSize.screenHeight * UiSize.singleProductCardHeight,
                width: ScreenSize.screenWidth * UiSize.singleProductCardWidth,
                decoration: BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(
                      RadiusSize.singleProductBorderRadius),
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
                        Icons.add,
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
                          Icons.star,
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
                          Icons.whatshot,
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
                        Icons.timer,
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
                expandText: 'view more',
                collapseText: 'view less',
                maxLines: 4,
                linkStyle: TextStyle(
                    color: Color(0xFF424242), fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: Paddings.normal,
              ),
              SizedBox(
                height: ScreenSize.screenHeight * 0.079,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: ScreenSize.screenWidth * 0.4,
                      margin: const EdgeInsets.only(right: 20),
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
                    );
                  },
                ),
              ),
              SizedBox(
                width: ScreenSize.screenWidth,
                height: 60,
                child: MyElevatedButton(
                  width: double.infinity,
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
                  child: const Text('Add To Cart'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
