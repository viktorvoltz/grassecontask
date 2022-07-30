import 'package:flutter/material.dart';

class SheetContent extends StatelessWidget {
  const SheetContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: 200,
      alignment: Alignment.center,
      child: Column(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Icon(Icons.person),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Do you want to create a new Account?"),
          ElevatedButton(
            onPressed: (){},
            child: const Text("Create A new Account"),
          )
        ],
      ),
    );
  }
}
