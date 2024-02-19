import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_ui/view/login_screen/login_screen.dart';

void main() {
  runApp(MyUi());
}

class MyUi extends StatelessWidget {
  const MyUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginUi(),
    );
  }
}
