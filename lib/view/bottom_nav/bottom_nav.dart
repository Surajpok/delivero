import 'package:delivero/imports.dart';
import 'package:delivero/view/home_screen/home_page.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:delivero/view/product_detail/food_details.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _tabIndex = 2;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(
            MyIcons.home,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
          Icon(
            MyIcons.heart,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
          Icon(
            MyIcons.search,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
          Icon(
            MyIcons.bell,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
          Icon(
            MyIcons.cart,
            color: ColorName.white,
            size: IconSizes.appBarItem,
          ),
        ],
        inactiveIcons: const [
          Icon(MyIcons.home),
          Icon(MyIcons.heart),
          Icon(MyIcons.search),
          Icon(MyIcons.bell),
          Icon(MyIcons.cart),
        ],
        color: ColorName.white,
        height: UiSize.bottomNavHeight,
        circleWidth: 70,
        circleGradient: const LinearGradient(
            colors: [ColorName.gradientFirst, ColorName.gradientSecond]),
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController?.jumpToPage(tabIndex);
        },
        // padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(RadiusSize.bottomMenuBorderRadius),
          topRight: Radius.circular(RadiusSize.bottomMenuBorderRadius),
          bottomRight: Radius.circular(0),
          bottomLeft: Radius.circular(0),
        ),
        shadowColor: ColorName.tertaryAccent,
        elevation: 0,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: const [
          HomeScreen(),
          FoodDetails(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
