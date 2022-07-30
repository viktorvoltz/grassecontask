import 'package:flutter/material.dart';
import 'package:grassecontask/global_widgets/dash_board.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.notifications_none_outlined),
                Icon(Icons.person)
              ],
            ),
            const SizedBox(height: 10,),
            const Text("Wallet"),
            const SizedBox(height: 5,),
            const Text("Mobile Team"),
            const SizedBox(height: 10,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DashBoard(icon: Icon(Icons.qr_code, color: Colors.white,), color: Colors.blue, name: Text("Your address", style: TextStyle(color: Colors.white),)),
                  SizedBox(width: 5),
                  DashBoard(icon: Icon(Icons.person_outlined), color: Colors.white, name: Text("Aliases")),
                  SizedBox(width: 5),
                  DashBoard(icon: Icon(Icons.toggle_on), color: Colors.white, name: Text("Balance")),
                  SizedBox(width: 5),
                  DashBoard(icon: Icon(Icons.arrow_back), color: Colors.white, name: Text("Recieve")),
            
                ],
              ),
            )
          ],
        ),
        ),
    );
  }
}