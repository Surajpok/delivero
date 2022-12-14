import 'package:delivero/imports.dart';
import 'package:delivero/model/popular_model.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({super.key});

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  List popularList = [
    {
      'name': 'Big cheese burger',
      'img': './assets/images/burger.png',
      'desc': 'No 10 opp lekki phase 1 bridge in sangotedo estate',
    },
    {
      'name': 'Medium cheese burger',
      'img': './assets/images/burger.png',
      'desc': 'No 10 opp lekki phase 1 bridge in sangotedo estate',
    },
    {
      'name': 'Big cheese burger',
      'img': './assets/images/burger.png',
      'desc': 'No 10 opp lekki phase 1 bridge in sangotedo estate',
    },
    {
      'name': 'Big cheese burger',
      'img': './assets/images/burger.png',
      'desc': 'No 10 opp lekki phase 1 bridge in sangotedo estate',
    },
    {
      'name': 'Big cheese burger',
      'img': './assets/images/burger.png',
      'desc': 'No 10 opp lekki phase 1 bridge in sangotedo estate',
    }
  ];
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
              "Popular Restaursnts",
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
          height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
        ),

//here

        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: PopularProduct.products.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                width: 220,
                margin: const EdgeInsets.only(right: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: ProductCard(
                  onTap: () {},
                  title: PopularProduct.products[index].title,
                  desc: PopularProduct.products[index].desc,
                  image: PopularProduct.products[index].image,
                  star: PopularProduct.products[index].star,
                ),
                // child: Container(
                //   padding: const EdgeInsets.all(20),
                //   decoration: const BoxDecoration(
                //     color: Color.fromARGB(13, 193, 218, 240),
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(50),
                //     ),
                //   ),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Image.asset(
                //         popularList[index]['img'],
                //         width: 400,
                //       ),
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             popularList[index]['name'],
                //             style: const TextStyle(
                //               fontSize: 16,
                //               fontWeight: FontWeight.w700,
                //             ),
                //           ),
                //           const SizedBox(
                //             height: 10,
                //           ),
                //           Text(
                //             popularList[index]['desc'],
                //             style: const TextStyle(
                //               fontSize: 14,
                //               fontWeight: FontWeight.normal,
                //             ),
                //           ),
                //           const SizedBox(
                //             height: 10,
                //           ),
                //           Row(
                //             children: [
                //               const Icon(
                //                 Icons.star,
                //                 color: Colors.orange,
                //               ),
                //               const Text(
                //                 '4+',
                //                 style: TextStyle(
                //                   fontSize: 14,
                //                 ),
                //               ),
                //               const SizedBox(
                //                 width: 100,
                //               ),
                //               Image.asset(
                //                 './assets/icons/heart.png',
                //                 fit: BoxFit.cover,
                //                 width: 18,
                //               ),
                //             ],
                //           ),
                //         ],
                //       )
                //     ],
                //   ),
                // ),
              );
            },
          ),
        ),

//tohere
      ],
    );
  }
}
