import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({this.icon, this.name, this.color, Key? key }) : super(key: key);
  final IconData? icon;
  final String? name;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 40,
      width: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          Text(name!),
        ],
      ),
    );
  }
}