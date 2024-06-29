import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/views/auth/login.dart';

AppBar appBar(BuildContext context, String text) {
  return AppBar(
    backgroundColor: whiteColor,
    title: Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall,
    ),
    leading: Builder(
      builder: (context) {
        return IconButton(
          icon: const Icon(Icons.menu_open_sharp),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      },
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.logout,
          color: bodyTextColor,
          size: 20.0,
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginView(),
            ),
          );
        },
      )
    ],
  );
}
