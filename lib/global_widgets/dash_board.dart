import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({this.icon, this.name, this.color, Key? key }) : super(key: key);
  final Icon? icon;
  final Text? name;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Colors.black,
      color: color,
      child: Container(
        padding: const EdgeInsets.only(left: 5),
        height: 50,
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            icon!,
            name!,
          ],
        ),
      ),
    );
  }
}