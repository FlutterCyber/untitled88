import 'package:flutter/material.dart';
import 'package:untitled88/alert_dialog_page.dart';
import 'package:untitled88/grid_view_page.dart';
import 'package:untitled88/tab_bar_view.dart';

class MyPageView extends StatefulWidget {
  static const String id = "page_view";

  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, MyTabBar.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: PageView(
        children: [
          AlertDialogPage(),
          GridViewPage(),
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
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                "Page 3",
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
    );
  }
}
