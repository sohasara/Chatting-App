import 'package:flutter/material.dart';

//const Color.fromARGB(255, 75, 71, 153)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F4FE),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF5F4FE),
          title: const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              "Hello,\nJohan",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 219, 215, 245),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: const Color.fromARGB(255, 75, 71, 153),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(child: Center(child: Text("All Chats"))),
                    Tab(child: Center(child: Text("Groups"))),
                    Tab(child: Center(child: Text("Contacts"))),
                  ],
                ),
              ),
            ),
          ),
          actions: const [
            Icon(Icons.search, color: Colors.black),
            SizedBox(width: 10),
            Icon(Icons.more_vert, color: Colors.black),
            SizedBox(width: 10),
          ],
        ),
        body: const TabBarView(
          children: [
            Text("data"),
            //ChatListScreen(),
            Center(child: Text("Groups Tab")),
            Center(child: Text("Contacts Tab")),
          ],
        ),
      ),
    );
  }
}
