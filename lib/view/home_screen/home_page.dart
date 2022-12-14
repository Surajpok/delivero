import 'package:delivero/view/popular/popular_page.dart';
import 'package:delivero/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CategoryPage(),
            PopularPage(),
          ],
        ),
       

      ),
    );
  }
}
