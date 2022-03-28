import 'package:flutter/material.dart';
import 'package:eatright/screens/editProfile/components/ProfileTextField.dart';
import 'package:eatright/screens/editProfile/components/editprofile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          EditProfilePic(),
          const SizedBox(height: 35),
          const ProfileTextField(
            text1: "Username",
            text2: "JohnDoe",
            boolean: false
          ),
          const ProfileTextField(
            text1: "Name",
            text2: "John Doe",
            boolean: false
          ),
          const ProfileTextField(
            text1: "Email Address",
            text2: "JohnDoe@email.com",
            boolean: false
          ),
          const ProfileTextField(
            text1: "Password",
            text2: "2343243423",
            boolean: true 
          ),
          const SizedBox(height: 35),
           Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text("Cancel",
                        style: 
                          Theme.of(context).textTheme.headline5)
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Color.fromARGB(100, 75, 180, 171),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Save",
                      style: Theme.of(context).textTheme.headline3
                    ),
                  )
                ]
              )
        ]
      )
    );
  }
}
