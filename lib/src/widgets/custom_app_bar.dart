import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? leading;
  final List<Widget>? actionsList;
  const CustomAppBar({super.key, this.title, this.leading, this.actionsList});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title:  title != null ? Text(title!, textAlign: TextAlign.start,): null,
      backgroundColor: Colors.deepOrange,
      elevation: 0,
     
     leading: const Icon(Icons.catching_pokemon_rounded),
      actions:actionsList  ,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
