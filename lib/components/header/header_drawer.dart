import 'package:delivero/imports.dart';
import 'package:delivero/models/user_model.dart' as model;
import 'package:delivero/providers/user_provider.dart';
import 'package:delivero/resources/firebase_auth_methods.dart';
import 'package:provider/provider.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    // model.User user = Provider.of<UserProvider>(context).getUser;

    return Drawer(
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
                "user.email",
                style: TextStyle(
                  fontSize: FontSizes.headline2,
                  color: ColorName.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              accountEmail: Text(
                "dosamarvis@gmail.com",
                style: TextStyle(
                  color: ColorName.black,
                  fontSize: FontSizes.headline3,
                ),
              ),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: ColorName.backgroundColor,
                foregroundImage: NetworkImage(
                  'https://via.placeholder.com/150',
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
              borderRadius: BorderRadius.circular(RadiusSize.buttonRadius),
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
