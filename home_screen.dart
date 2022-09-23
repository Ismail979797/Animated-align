import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Alignment _alignment = Alignment.centerRight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          children: [
            AnimatedAlign(
              alignment: _alignment,
              duration: Duration(seconds: 5),
              child: Text('My Message'),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  _alignment = Alignment.centerLeft;
                });
              }),
              child: Text("change Alignment"),
            ),
          ],
        ),
      ),
    );
  }
}
