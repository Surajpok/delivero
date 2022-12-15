import 'package:delivero/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                automaticallyImplyLeading: false,
                pinned: true,
                flexibleSpace: TopMenu(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(20),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  ((context, index) => _buildBody(context)),
                  childCount: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return Column(
    children: const [
      CategoryPage(),
      PopularPage(),
    ],
  );
}
