import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopifyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;
  final void Function()? onTapBack;
  const ShopifyAppBar({
    Key? key,
    required this.title,
    required this.appBar,
    this.onTapBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [Image.asset('images/logo.png')],
      leading: onTapBack == null
          ? null
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                fit: BoxFit.contain,
                child: IconButton(
                  iconSize: 50,
                  onPressed: onTapBack,
                  icon: const FaIcon(
                    FontAwesomeIcons.circleArrowLeft,
                  ),
                ),
              ),
            ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
