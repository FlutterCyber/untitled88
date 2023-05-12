import 'package:flutter/material.dart';
import 'package:untitled88/alert_dialog_page.dart';

class MyTabBar extends StatefulWidget {
  static const String id = "tab_bar";

  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AlertDialogPage.id);
              },
              icon: Icon(Icons.arrow_forward),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.account_circle),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.supervisor_account_sharp),
                text: "School",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.pink,
              child: const Center(
                child: Text(
                  "Page 1",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  "Page 2",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
