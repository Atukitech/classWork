import 'package:flutter/material.dart';

class DashPage extends StatefulWidget {
  const DashPage({Key? key}) : super(key: key);

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        'Dashboard',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
      )),
    );
  }
}
