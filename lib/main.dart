import 'package:flutter/material.dart';
import 'package:eatright/view/home.dart';

void main() {
  runApp(const MaterialApp(
    home: NavHomePage(),
  ));
}

class NavHomePage extends StatelessWidget {
  const NavHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Open Home Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
    );
  }
}
