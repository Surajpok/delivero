import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivero/imports.dart';
import 'package:delivero/resources/firebase_auth_methods.dart';
import 'package:delivero/utils/show_snack_bar.dart';
import 'package:provider/provider.dart';

class HeaderDrawer extends StatefulWidget {
  final String uid;
  const HeaderDrawer({super.key, required this.uid});

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
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
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DrawerHeader(
                  // decoration: BoxDecoration(
                  //   color: ColorName.white,
                  // ),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    accountName: Text(
                      userData['firstName'],
                      style: TextStyle(
                        fontSize: FontSizes.headline2,
                        color: ColorName.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    accountEmail: Text(
                      userData['email'],
                      style: TextStyle(
                        color: ColorName.black,
                        fontSize: FontSizes.headline3,
                      ),
                    ),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: ColorName.backgroundColor,
                      foregroundImage: NetworkImage(
                        userData['photoUrl'],
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(MyIcons.profile),
                  title: const Text(
                    ' My Profile ',
                    style: TextStyle(fontSize: FontSizes.headline3),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(MyIcons.payment),
                  title: const Text(
                    ' Payment Method ',
                    style: TextStyle(fontSize: FontSizes.headline3),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(MyIcons.setting),
                  title: const Text(
                    ' Setting',
                    style: TextStyle(fontSize: FontSizes.headline3),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(MyIcons.help),
                  title: const Text(
                    ' Help ',
                    style: TextStyle(fontSize: FontSizes.headline3),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(MyIcons.privacy),
                  title: const Text(
                    ' Privacy Policy ',
                    style: TextStyle(fontSize: FontSizes.headline3),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
                ),
                ListTile(
                  leading: MyElevatedButton(
                    height: ScreenSize.screenHeight * 0.07,
                    width: ScreenSize.screenWidth * 0.3,
                    onPressed: () {
                      context.read<FirebaseAuthMethods>().signOut(context);
                    },
                    borderRadius:
                        BorderRadius.circular(RadiusSize.buttonRadius),
                    child: const Text('Log Out'),
                  ),
                ),
                SizedBox(
                  height: ScreenSize.screenHeight * UiSize.sizedBoxHeight,
                ),
              ],
            ),
          );
  }
}
