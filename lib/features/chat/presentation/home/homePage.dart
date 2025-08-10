// ignore_for_file: file_names

import 'package:chatting_application/features/group/presentation/groups.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'personList.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushNamed('contactpage');
          },
          backgroundColor: const Color.fromARGB(255, 107, 102, 241),
          child: const Icon(
            Icons.chat_bubble_outline_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFF5F4FE),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFFF5F4FE),
          title: const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              "Chatting App",
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
                height: 43,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 219, 215, 245),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    // color: const Color.fromARGB(255, 75, 71, 153),
                    color: const Color.fromARGB(255, 107, 102, 241),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(child: Center(child: Text("All Chats"))),
                    Tab(child: Center(child: Text("Groups"))),
                    Tab(child: Center(child: Text("Calls"))),
                  ],
                ),
              ),
            ),
          ),
          actions: const [
            Icon(Icons.camera_alt, color: Colors.black),
            SizedBox(width: 10),
            Icon(Icons.search, color: Colors.black),
            SizedBox(width: 10),
            Icon(Icons.more_vert, color: Colors.black),
            SizedBox(width: 10),
          ],
        ),
        body: const TabBarView(
          children: [
            ChatListScreen(),
            GroupPage(),
            Center(child: Text("Contacts Tab")),
          ],
        ),
      ),
    );
  }
}
