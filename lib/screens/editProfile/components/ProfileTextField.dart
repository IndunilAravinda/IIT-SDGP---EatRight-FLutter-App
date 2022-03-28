import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    required this.text1,
    required this.text2,
    required this.boolean,
  });

  final String text1, text2;
  final bool boolean;
  static bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:18 ,horizontal: 20),
      child: TextField(
        obscureText: boolean ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: boolean
              ?IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: const Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                ),
              )
            : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: text1,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: text2,
            hintStyle: Theme.of(context).textTheme.bodyText1
        ),
      )
    );
  }

  void setState(Null Function() param0) {}
}
