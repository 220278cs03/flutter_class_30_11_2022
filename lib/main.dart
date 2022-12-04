import 'package:flutter/material.dart';

import 'alert_dialog.dart';
import 'bottomsheet.dart';
import 'cupertino.dart';
import 'dialog.dart';
import 'dialog_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Dialog_task(),
    );
  }
}