import 'package:flutter/material.dart';
import 'package:untitled88/alert_dialog_page.dart';
import 'package:untitled88/grid_view_page.dart';
import 'package:untitled88/page_view.dart';
import 'package:untitled88/tab_bar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlertDialogPage(),
      routes: {
        AlertDialogPage.id: (context) => const AlertDialogPage(),
        GridViewPage.id: (context) => const GridViewPage(),
        MyPageView.id: (context) => const MyPageView(),
        MyTabBar.id: (context) => const MyTabBar(),
      },
    );
  }
}
