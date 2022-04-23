import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class AllergiesScreen extends StatefulWidget {
  const AllergiesScreen({Key? key}) : super(key: key);

  @override
  State<AllergiesScreen> createState() => _AllergiesScreenState();
}

class _AllergiesScreenState extends State<AllergiesScreen> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      checkColor: Colors.white,
      activeColor: Color(0xFF009688),
      value: timeDilation != 1.0,
      onChanged: (bool? value) {
        setState(() {
          timeDilation = value! ? 2.0 : 1.0;
        });
      },
    );
  }
}
