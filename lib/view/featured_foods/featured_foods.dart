import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivero/components/food_card/food_card.dart';
import 'package:delivero/imports.dart';

class FeaturedFoodsPage extends StatefulWidget {
  const FeaturedFoodsPage({super.key});

  @override
  State<FeaturedFoodsPage> createState() => _FeaturedFoodsPageState();
}

class _FeaturedFoodsPageState extends State<FeaturedFoodsPage> {
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
              "Food For You",
              style: TextStyle(
                fontSize: FontSizes.subheading,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "View all(29)",
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
                  .collection('foods')
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
                      width: 320,
                      margin: const EdgeInsets.only(
                          right: 20, left: 5, top: 10, bottom: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: FoodCard(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/details',
                            arguments: {
                              'title': snapshot.data!.docs[index].get('name'),
                              'desc': snapshot.data!.docs[index].get('desc'),
                              'image': snapshot.data!.docs[index].get('image'),
                              'star': snapshot.data!.docs[index].get('rating'),
                            },
                          );
                        },
                        title: snapshot.data!.docs[index].get('name'),
                        desc: snapshot.data!.docs[index].get('desc'),
                        image: snapshot.data!.docs[index].get('image'),
                        star: snapshot.data!.docs[index].get('rating'),
                        imagewidth: ScreenSize.screenWidth *
                            UiSize.featuredFoodImageWidth,
                        width: 0,
                      ),
                    );
                  },
                );
              }),
        ),

//tohere
      ],
    );
  }
}
