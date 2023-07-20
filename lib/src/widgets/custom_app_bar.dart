import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool leading;
  final List<Widget>? actionsList;
  const CustomAppBar(
      {super.key, this.title, this.leading = true, this.actionsList});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title != null
          ? Text(
              title!,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 16),
            )
          : null,
      backgroundColor: Colors.deepOrange,
      elevation: 0,
      leading: leading
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded))
          : const Icon(Icons.camera),
      actions: actionsList,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
