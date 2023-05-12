import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled88/grid_view_page.dart';

class AlertDialogPage extends StatefulWidget {
  static const String id = "alert_page";

  const AlertDialogPage({Key? key}) : super(key: key);

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  void _androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Deleting file"),
            content: Text("Are you sure want to delete this file?"),
            actions: [
              TextButton(
                onPressed: () {
                  print("Fileni o'chirish bekor qilindi");
                  Navigator.of(context).pop();
                },
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  print("File o'chirildi");
                  Navigator.of(context).pop();
                },
                child: const Text("Confirm"),
              ),
            ],
          );
        });
  }

  void _IOSDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text("Deleting file"),
            content: Text("Are you sure want to delete this file?"),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  print("Fileni o'chirish bekor qilindi");
                  Navigator.of(context).pop();
                },
                child: Text("Cancel"),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  print("File o'chirildi");
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Confirm",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert dialog"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, GridViewPage.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (Platform.isAndroid) {
              _androidDialog();
            } else if (Platform.isIOS) {
              _IOSDialog();
            }
          },
          child: Text("Delete file"),
        ),
      ),
    );
  }
}
