import 'package:flutter/material.dart';
import 'package:innovative_task1/profile_page.dart';
import 'package:innovative_task1/users.dart';

class Member extends StatefulWidget {

  final List <User> members;

  const Member({Key? key, required this.title, required this.members}) : super(key: key);
  final String title;


  @override
  State<Member> createState() => _MemberState();
}

class _MemberState extends State<Member> {

  @override
  Widget build(BuildContext context) {

    List <User> users = widget.members;

    return Scaffold(

        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index){
            final user = users[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(user.avatar),
                ),
                title: Text(user.name),
                subtitle: Text(user.relationship),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfilePage(user: user)
                  ));
                },
              ),
            );
          },

        )
    );
  }
}
