import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? leading;
  final List<Widget>? actionsList;
  const CustomAppBar({super.key, this.title, this.leading, this.actionsList});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title:  title != null ? Text(title!): null,
      backgroundColor: Colors.deepOrange,
      elevation: 0,
      leading:  Center(
        child: leading != null ? Text(leading!) : null,
      ),
      actions:actionsList ,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
