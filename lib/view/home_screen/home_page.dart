import 'package:delivero/components/header/header_drawer.dart';
import 'package:delivero/imports.dart';

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
            const SliverPadding(
              padding: EdgeInsets.only(
                left: Paddings.minimum,
                right: Paddings.minimum,
              ),
              sliver: SliverAppBar(
                // automaticallyImplyLeading: false,
                pinned: true,
                flexibleSpace: TopMenu(),
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
        drawer: HeaderDrawer(),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: const [
        CategoryPage(),
        PopularPage(),
      ],
    );
  }
}
