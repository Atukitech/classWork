import 'package:flutter/material.dart';
class  HomePage extends StatefulWidget {
  // ignore: use_super_parameters
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Text('HomePage', style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.green),)),
    );
  }
}