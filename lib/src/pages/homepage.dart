import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF0D47A1),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/puma-unah-vs.png')),
            const SizedBox(height: 30),
            const Text(
              '¡Bienvenido Roger!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFBC02D),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                padding: const EdgeInsets.all(17),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text('Tu información.',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D47A1))),
                        SizedBox(width: 10),
                        Icon(Icons.info, color: Color(0xFF0D47A1), size: 20),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.person, color: Color(0xFF0D47A1), size: 30),
                        SizedBox(width: 15),
                        Text('Roger Mejía',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D47A1))),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.mail, color: Color(0xFF0D47A1), size: 30),
                        SizedBox(width: 15),
                        Text('rfmejiah@unah.hn',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D47A1))),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.computer,
                            color: Color(0xFF0D47A1), size: 30),
                        SizedBox(width: 15),
                        Text('Ing. En Sistemas',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D47A1))),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.school, color: Color(0xFF0D47A1), size: 30),
                        SizedBox(width: 15),
                        Text('UNAH - VS',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D47A1))),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Color(0xFF0D47A1), size: 30),
                        SizedBox(width: 15),
                        Text('+(504) 9908-3878',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D47A1))),
                      ],
                    ),
                  ],
                ))
          ],
        )));
  }
}
