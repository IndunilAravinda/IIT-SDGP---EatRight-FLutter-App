import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: ListView(children: [
          Row(
            children: [
              SizedBox(width: 8),
              Text(
                "Account",
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          const Divider(
            height: 15,
            thickness: 1,
          ),
          const SizedBox(height: 5),
          buildAccountOptionRow(context, "Change password"),
          buildAccountOptionRow(context, "Content settings"),
          buildAccountOptionRow(context, "Social"),
          buildAccountOptionRow(context, "Language"),
          buildAccountOptionRow(context, "Privacy and security"),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Text(
                "Notifications",
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          const Divider(
            height: 15,
            thickness: 1,
          ),
          const SizedBox(height: 5),
          buildNotificationOptionRow(context, "New for you", true),
          buildNotificationOptionRow(context, "Account activity", true),
          buildNotificationOptionRow(context, "Opportunity", false),
          const SizedBox(height: 50),
        ]));
  }
}

GestureDetector buildAccountOptionRow(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}

Row buildNotificationOptionRow(
    BuildContext context, String title, bool isActive) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      Transform.scale(
        scale: 0.7,
        //Might be iOS only. Check again.
        child: CupertinoSwitch(
          value: isActive, onChanged: (bool val) {}
          //setState(() { _lights = value; });
        ),
      )
    ],
  );
}
