import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({Key? key, this.avatarBackgroundColor, this.avatarText, this.titleText, this.subText, this.positionedIcon}) : super(key: key);
  final Color? avatarBackgroundColor;
  final String? avatarText, titleText, subText;
  final IconData? positionedIcon;


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.black,
      child: ListTile(
        leading: Stack(
          children: [
            CircleAvatar(
              maxRadius: 20,
              backgroundColor: avatarBackgroundColor,
              child: Text(avatarText!),
            ),
            Positioned(
              bottom: 1.0,
              right: 1.0,
              child: CircleAvatar(
              minRadius: 7,
              backgroundColor: Colors.white,
              child: Icon(positionedIcon, size: 10,),
            ),
            )
          ],
        ),
        title: Text(titleText!, style: TextStyle(color: Colors.black54)),
        subtitle: Text(subText!, style: TextStyle(color: Colors.black),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          //side: BorderSide(color: Colors.black)
        ),
      ),
    );
  }
}
