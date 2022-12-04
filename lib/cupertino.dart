import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogim extends StatelessWidget {
  const CupertinoDialogim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(title: Text("Tanlang"), actions: [
                    CupertinoButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('back')),
                  ]);
                });
          },
          child: Text("Dialog"),
        ),
      ),
    );
  }
}
