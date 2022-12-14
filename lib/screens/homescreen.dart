import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grassecontask/global_widgets/dash_board.dart';
import 'package:grassecontask/global_widgets/tile.dart';

import '../global_widgets/sheet_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showSheet(int index) {
      if (index == 2) {
        showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return const SheetContent();
            });
      }
    }

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          minimum: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.notifications_none_outlined),
                    CircleAvatar(
                        maxRadius: 15,
                        backgroundColor: Color.fromARGB(255, 2, 65, 61))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Wallet",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      "Mobile Team",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: const [
                          Positioned(
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              size: 20,
                              color: Colors.black54,
                            ),
                          ),
                          Positioned(
                            bottom: -7,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const DashBoard(
                          icon: Icon(
                            Icons.qr_code_2,
                            color: Colors.white,
                          ),
                          color: Colors.blue,
                          name: Text(
                            "Your address",
                            style: TextStyle(color: Colors.white),
                          )),
                      const SizedBox(width: 5),
                      const DashBoard(
                        icon: Icon(Icons.person_outline),
                        color: Colors.white,
                        name: Text("Aliases"),
                      ),
                      const SizedBox(width: 5),
                      Card(
                        elevation: 3,
                        shadowColor: Colors.black,
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.only(left: 5),
                          height: 50,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CupertinoSwitch(
                                activeColor: Colors.blue,
                                value: true,
                                onChanged: (bool h) {},
                              ),
                              const Text("Balance"),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const DashBoard(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          name: Text("Recieve")),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TabBar(
                    unselectedLabelColor: Colors.black45,
                    isScrollable: true,
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text(
                          "Tokens",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Leasing",
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 300,
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 300,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      isDense: true,
                                      contentPadding: const EdgeInsets.all(8),
                                      fillColor: Colors.grey,
                                      prefixIcon: const Icon(Icons.search),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                      hintText: "Search"),
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 50,
                                child: Stack(
                                  children: const [
                                    Icon(
                                      Icons.arrow_upward_sharp,
                                      size: 20,
                                    ),
                                    Positioned(
                                      top: 2.0,
                                      left: 8.0,
                                      child: Icon(
                                        Icons.arrow_downward_sharp,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TileWidget(
                            avatarBackgroundColor: Colors.grey,
                            avatarText: "W",
                            positionedIcon: Icons.check,
                            titleText: "Waves ????",
                            subText: "5.0054",
                          ),
                          const TileWidget(
                            avatarBackgroundColor: Colors.grey,
                            avatarText: "P",
                            positionedIcon: Icons.arrow_back_ios_new,
                            titleText: "Pigeon / My Token",
                            subText: "1444.04556321",
                          ),
                          const TileWidget(
                            avatarBackgroundColor: Colors.green,
                            avatarText: "\$",
                            positionedIcon: Icons.check,
                            titleText: "US Dollar",
                            subText: "199.24",
                          ),
                        ],
                      ),
                      Container()
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Hidden Tokens (2)"),
                    Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Suspicious Tokens (15)"),
                    Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 2,
        onTap: showSheet,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
              ),
              label: "wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "")
        ],
      ),
    );
  }
}
