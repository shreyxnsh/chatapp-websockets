import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
   ButtonCard({super.key, required this.name, required this.icon, required this.onTap});
  final String name;
  final String icon;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage:  AssetImage(icon),
        ),
        title:  Text(name),
        
      ),
    );
  }
}