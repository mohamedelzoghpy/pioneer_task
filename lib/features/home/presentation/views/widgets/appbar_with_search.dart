
import 'package:flutter/material.dart';

class AppBarWithSearch extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithSearch({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String? title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,

      actions: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(icon:const Icon (Icons.search),onPressed:onPressed,),
        )
      ],

      title:  Text(
        title!,
        style: const TextStyle(fontSize: 18, ),
      ),
    );
  }

  @override

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
