import 'package:flutter/material.dart';
import 'package:innovative_task1/tabs/members_gaje.dart';

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
                padding: EdgeInsets.only(top: 15, bottom: 40),
                child: Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(user.Avatar),
                      backgroundColor: Colors.blueGrey[900],
                    )
                )
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Text("Name", style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 80),
                      Text(": ${user.name}"),
                  ],
                )
            ),
            Container(padding: EdgeInsets.only(left: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Relationship", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 80),
                    Text(": ${user.relationship}")
                  ]
              )
            ),
            Container(padding: EdgeInsets.only(left: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Occupation", style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 80),
                      Text(": ${user.occupation}"),
                    ]
                )
            ),
            Container(padding: EdgeInsets.only(left: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Birthday", style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 80),
                      Text(": ${user.birthday}"),
                    ]
                )
            ),
            Container(padding: EdgeInsets.only(left: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Age", style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 80),
                      Text(": ${user.age}"),
                    ]
                )
            ),
          ],
        ),
      )
    );
  }
}
