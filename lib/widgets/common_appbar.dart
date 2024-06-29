import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/views/auth/login.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
    this.titleText,
    this.subTitleText,
    this.actions,
    required this.backgroundColor,
    this.onPressed,
    this.iconSize,
    this.toolbarHeight,
    this.elevation,
    this.isLeading,
    this.leadingWidth,
    this.padding,
    this.bottom,
    this.icon,
    this.context,
  });

  final String? titleText;
  final String? subTitleText;
  final actions;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final double? iconSize;
  final double? toolbarHeight;
  final double? elevation;
  final bool? isLeading;
  final double? leadingWidth;
  final EdgeInsetsGeometry? padding;
  final PreferredSizeWidget? bottom;
  final IconData? icon;
  final BuildContext? context;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation ?? 0.3,
      backgroundColor: backgroundColor,
      toolbarHeight: toolbarHeight ?? 100,
      leadingWidth: leadingWidth ?? 54,
      leading: IconButton(
        icon: Icon(
          icon,
          color: bodyTextColor,
          size: iconSize ?? 20.0,
        ),
        onPressed: onPressed ??
            () {
              Scaffold.of(context).openDrawer();
            },
      ),
      title: Text(
        titleText!,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 18,
          color: bodyTextColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.logout,
            color: bodyTextColor,
            size: 20.0,
          ),
          onPressed: onPressed ??
              () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ),
                );
              },
        )
      ],
      bottom: bottom,
    );
  }
}
