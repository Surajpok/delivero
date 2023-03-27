import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivero/imports.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({super.key});

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Popular Restaurants",
              style: TextStyle(
                fontSize: FontSizes.subheading,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "View all(15)",
              style: TextStyle(
                fontSize: FontSizes.subheading,
                fontWeight: FontWeight.w400,
                color: ColorName.textButtonColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: ScreenSize.screenHeight * UiSize.sizedBoxSmallPaddingHeight,
        ),
        SizedBox(
          height: 300,
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('restaurants')
                  .where('featured', isEqualTo: true)
                  .snapshots(),
              builder: (context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.docs.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 220,
                      margin: const EdgeInsets.only(
                          right: 20, left: 5, top: 10, bottom: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: RestaurantCard(
                        onTap: () {
                          Navigator.pushNamed(context, '/details');
                        },
                        title: snapshot.data!.docs[index].get('name'),
                        desc: snapshot.data!.docs[index].get('desc'),
                        image: snapshot.data!.docs[index].get('logo'),
                        star: snapshot.data!.docs[index].get('rating'),
                        imagewidth:
                            ScreenSize.screenWidth * UiSize.productImageWidth,
                        width: 0,
                      ),
                    );
                  },
                );
              }),
        ),
        SizedBox(
          height: ScreenSize.screenHeight * UiSize.sizedBoxPaddingHeight,
        ),
      ],
    );
  }
}
