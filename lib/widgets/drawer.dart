import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/image.dart';
import 'package:gobe_app/views/auth/login.dart';
import 'package:gobe_app/views/main_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(logo),
                ),
                const SizedBox(height: 10),
                Text(
                  'Kobicypher',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          drawerListStyle(context, 'Home', Icons.home, onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MainView(),
              ),
            );
          }),
          drawerListStyle(context, 'Profile', Icons.person, onTap: () {
            Navigator.pop(context);
          }),
          drawerListStyle(
            context,
            'Settings',
            Icons.settings,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          drawerListStyle(
            context,
            'Help',
            Icons.help,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.grey,
            indent: 16,
            endIndent: 16,
            height: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: primaryColor.withOpacity(0.5),
            ),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  ListTile drawerListStyle(BuildContext context, String title, IconData icon,
      {void Function()? onTap}) {
    return ListTile(
        leading: Icon(
          icon,
          color: primaryColor.withOpacity(0.5),
        ),
        title: Text(
          title,
        ),
        onTap: onTap);
  }
}
