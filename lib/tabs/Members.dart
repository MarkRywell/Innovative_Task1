import 'package:flutter/material.dart';


class User{
  final int id, age;
  final String name, relationship, Avatar, occupation, birthday;

  const User({
    required this.id,
    required this.name,
    required this.relationship,
    required this.Avatar,
    required this.occupation,
    required this.birthday,
    required this.age
  });

}

class Members extends StatefulWidget {
  const Members({Key? key}) : super(key: key);

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {

  List<User> users = [
    const User(
      id: 2020302619,
      name: 'Mark Rywell G. Gaje',
      relationship: 'Gwapo',
      Avatar: 'assets/mark.jpg',
      occupation: 'Student',
      birthday: 'May 31, 2001',
      age: 21
    ),
    const User(
        id: 2020302507,
        name: 'Asareel Don F. Peña',
        relationship: 'Unsent Boi',
        Avatar: 'assets/don.JPG',
        occupation: 'Student',
        birthday: 'May 31, 2001',
        age: 21
    ),
    const User(
        id: 2020302940,
        name: 'Chelsea Shaira C. Tibudan',
        relationship: 'Ate',
        Avatar: 'assets/chelsea.jpg',
        occupation: 'Student',
        birthday: 'May 31, 2001',
        age: 29
    ),
    const User(
        id: 2020301996,
        name: 'Ralph Jayson Senining',
        relationship: 'Banal',
        Avatar: 'assets/rj.png',
        occupation: 'Student',
        birthday: 'May 31, 2001',
        age: 21
    ),
    const User(
        id: 2020305455,
        name: 'Louie Phillip Divinagracia',
        relationship: 'LP',
        Avatar: 'assets/lp.png',
        occupation: 'Student',
        birthday: 'May 31, 2001',
        age: 21
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
              subtitle: Text('${user.id}'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          );
        },

      )
    );
  }
}
