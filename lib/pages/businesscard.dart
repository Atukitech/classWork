import 'package:bs_app/pages/curvebottom.dart';
import 'package:flutter/material.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({super.key});

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Text(
              'Business Card',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                width: 500,
                height: 500,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Colors.green),
                child: const Column(
                  children: [
                    SizedBox(height: 15),
                    CircleAvatar(
                        radius: 70,
                        backgroundImage:
                            NetworkImage('https://picsum.photos/250?image=9')),
                    SizedBox(height: 10),
                    Text(
                      'John Doe',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                        width: 240,
                        child: Divider(color: Colors.white, thickness: 5)),
                    SizedBox(height: 15),
                    Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: Icon(
                            Icons.call,
                            size: 50,
                            color: Colors.green,
                          ),
                          title: Text(
                            '0123456789',
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                          subtitle: Text(
                            '0123456789',
                            style: TextStyle(color: Colors.green, fontSize: 12),
                          ),
                        )),
                    SizedBox(height: 10),
                    Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: Icon(
                            Icons.mail,
                            size: 50,
                            color: Colors.green,
                          ),
                          title: Text(
                            'your@gmail.com',
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                          subtitle: Text(
                            'your@gmail.com',
                            style: TextStyle(color: Colors.green, fontSize: 12),
                          ),
                        )),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/59/59439.png')),
                        SizedBox(width: 5),
                        CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/59/59439.png')),
                        SizedBox(width: 5),
                        CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/59/59439.png')),
                        SizedBox(width: 25),
                      ],
                    ),
                  ],
                ),
              ),
            ),

////////////////////////
            Padding(
              padding: const EdgeInsets.all(20),
              child: Expanded(
                child: Container(
                  width: 500,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Center(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CurveBottom()));
                        },
                        child: const Text(
                          "Bottom Nav",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
