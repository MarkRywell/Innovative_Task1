import 'package:flutter/material.dart';
import 'package:innovative_task1/tabs/members_tabudlong.dart';

class ProfilePage extends StatelessWidget {
  final User user;

  const ProfilePage({Key? key, required this.user,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(user.name)
        ),
        body: ListView(
          padding: EdgeInsets.zero,

          children: [
            Container(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(user.Avatar),
                      backgroundColor: Colors.blueGrey[900],
                    )
                )
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 20, right: 100),
              title: Text("Name"),
              trailing: Text(": ${user.name}",
                  textDirection: TextDirection.ltr),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 20),
              title: Text("Relationship"),
              trailing: Text(": ${user.relationship}",
                  textDirection: TextDirection.ltr),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 20, right: 100),
              title: Text("Occupation"),
              trailing: Text(": ${user.occupation}",
                  textDirection: TextDirection.ltr),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 20, right: 100),
              title: Text("Birthday"),
              trailing: Text(": ${user.birthday}",
                  textDirection: TextDirection.ltr),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 20, right: 100),
              title: Text("Age"),
              trailing: Text(": ${user.age}",
                  textDirection: TextDirection.ltr),
            ),
          ],
        ),
      )
    );
  }
}
