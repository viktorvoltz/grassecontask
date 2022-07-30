import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      shadowColor: Colors.black,
      child: ListTile(
        leading: Stack(
          children: const [
            CircleAvatar(
              maxRadius: 20,
              backgroundColor: Colors.grey,
              child: Text("P"),
            ),
            Positioned(
              bottom: 1.0,
              right: 1.0,
              child: CircleAvatar(
              minRadius: 7,
              backgroundColor: Colors.white,
              child: Icon(Icons.check, size: 10,),
            ),
            )
          ],
        ),
        title: const Text("pigeon"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          //side: BorderSide(color: Colors.black)
        ),
      ),
    );
  }
}
