import 'package:flutter/material.dart';

class {{name.pascalCase()}} extends StatelessWidget {
   const {{name.pascalCase()}}({
    this.onTap,
    this.icon,
    this.splashColor,
    super.key,
  });

  final VoidCallback? onTap;
  final Icon? icon;
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        splashColor: splashColor,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(.06),
          ),
          child: const Icon(
            Icons.{{icon_name}}
          ),
        ),
      ),
    );
  }
}