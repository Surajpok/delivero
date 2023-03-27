import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivero/imports.dart';
import 'package:delivero/utils/show_snack_bar.dart';

class TopMenu extends StatefulWidget {
  final String uid;
  const TopMenu({super.key, required this.uid});

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  var userData = {};
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    setState(() {
      isLoading = true;
    });
    try {
      var snap = await FirebaseFirestore.instance
          .collection("users")
          .doc(widget.uid)
          .get();
      userData = snap.data()!;
      setState(() {});
    } catch (e) {
      showSnakBar(context, e.toString());
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) => AppBar(
        flexibleSpace: Container(
          color: ColorName.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Delivery To",
                      style: TextStyle(
                        fontSize: FontSizes.headline2,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Text(
                      "lekki phase 1, Estate",
                      style: TextStyle(
                          fontSize: FontSizes.intro,
                          color: ColorName.textButtonColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          Material(
            borderRadius:
                BorderRadius.circular(RadiusSize.categoryBorderRadius),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              onTap: () {},
              child: Image.network(
                userData['photoUrl'],
                fit: BoxFit.contain,
                width: IconSizes.avatar,
              ),
            ),
          ),
        ],
      );
}
