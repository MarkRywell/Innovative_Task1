import 'package:flutter/material.dart';
import 'package:innovative_task1/profile_page.dart';
import 'package:innovative_task1/users.dart';

class Members_Tabudlong extends StatefulWidget {
  const Members_Tabudlong({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Members_Tabudlong> createState() => _Members_TabudlongState();
}

class _Members_TabudlongState extends State<Members_Tabudlong> {

  List<User> users = [
    const User(
      id: 2020302123,
      name: 'Van David T. Tabudlong',
      relationship: 'Me',
      Avatar: 'assets/tabudlong/van.jpg',
      occupation: 'Student',
      birthday: 'June 17, 2002',
      age: 20
    ),
    const User(
        id: 2020302234,
        name: 'Ian T. Tabudlong',
        relationship: 'Father',
        Avatar: 'assets/tabudlong/ian.jpg',
        occupation: 'Teacher',
        birthday: 'December 21, 1975',
        age: 46
    ),
    const User(
        id: 2020302345,
        name: 'Neneth T. Tabudlong',
        relationship: 'Mother',
        Avatar: 'assets/tabudlong/neneth.jpg',
        occupation: 'Government Employee',
        birthday: 'August 26, 1976 ',
        age: 45
    ),
    const User(
        id: 2020301456,
        name: 'Val Ian T. Tabudlong',
        relationship: 'Older Brother',
        Avatar: 'assets/tabudlong/val.jpg',
        occupation: 'Police',
        birthday: 'December 03, 1996',
        age: 25
    ),
    const User(
        id: 2020305567,
        name: 'Valerie T. Tabudlong',
        relationship: 'Youngest Sister',
        Avatar: 'assets/tabudlong/valerie.jpg',
        occupation: 'Student',
        birthday: 'April 19, 2005',
        age: 17
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(user.Avatar),
              ),
              title: Text(user.name),
              subtitle: Text('${user.relationship}'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
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
