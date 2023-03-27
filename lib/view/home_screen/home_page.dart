import 'package:delivero/components/header/header_drawer.dart';
import 'package:delivero/imports.dart';

import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.only(
                left: Paddings.minimum,
                right: Paddings.minimum,
              ),
              sliver: SliverAppBar(
                // automaticallyImplyLeading: false,
                pinned: true,
                flexibleSpace: TopMenu(
                  uid: FirebaseAuth.instance.currentUser!.uid,
                ),
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
        drawer: HeaderDrawer(
          uid: FirebaseAuth.instance.currentUser!.uid,
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        CategoryPage(),
        FeaturedFoodsPage(),
        PopularPage(),
      ],
    );
  }
}
