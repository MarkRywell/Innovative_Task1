import 'package:flutter/material.dart';
import 'package:innovative_task1/users.dart';
import 'package:innovative_task1/text_custom_widget.dart';

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
          padding: EdgeInsets.only(left: 15, right: 15),

          children: [
            Container(
                padding: const EdgeInsets.only(top: 15, bottom: 40),
                child: Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(user.Avatar),
                      backgroundColor: Colors.blueGrey[900],
                    )
                )
            ),
            TextCustom(text_title: "Name", data: user.name),
            const Divider(thickness: 2, height: 30),
            TextCustom(text_title: "Relationship", data: user.relationship),
            const Divider(thickness: 2, height: 30),
            TextCustom(text_title: "Occupation", data: user.occupation),
            const Divider(thickness: 2, height: 30),
            TextCustom(text_title: "Birthday", data: user.birthday),
            const Divider(thickness: 2, height: 30),
            TextCustom(text_title: "Age", data: user.age.toString()),
            const Divider(thickness: 2, height: 30),
          ],
        ),
      )
    );
  }
}
