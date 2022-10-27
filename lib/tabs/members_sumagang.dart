import 'package:flutter/material.dart';
import 'package:innovative_task1/profile_page_sumagang.dart';

class User_Sumagang {
  final int id, age;
  final String name, relationship, Avatar, occupation, birthday;

  const User_Sumagang(
      {required this.id,
      required this.name,
      required this.relationship,
      required this.Avatar,
      required this.occupation,
      required this.birthday,
      required this.age});
}

class Members_Sumagang extends StatefulWidget {
  const Members_Sumagang({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Members_Sumagang> createState() => _Members_SumagangState();
}

class _Members_SumagangState extends State<Members_Sumagang> {
  List<User_Sumagang> users = [
    const User_Sumagang(
        id: 2020302955,
        name: 'Gia C. Sumagang',
        relationship: 'Me',
        Avatar: 'assets/sumagang/gia.jpg',
        occupation: 'Student',
        birthday: 'August 30, 2002',
        age: 20),
    const User_Sumagang(
        id: 2751643297,
        name: 'Vivian C. Sumagang',
        relationship: 'Mother',
        Avatar: 'assets/sumagang/vivian.jpg',
        occupation: 'HouseWife',
        birthday: 'June 20, 1980',
        age: 43),
    const User_Sumagang(
        id: 27532522332,
        name: 'Remegio L. Sumagang',
        relationship: 'Father',
        Avatar: 'assets/sumagang/remegio.jpg',
        occupation: 'Farmer',
        birthday: 'October 1, 1969 ',
        age: 53),
    const User_Sumagang(
        id: 0030,
        name: 'Keren Keziah C. Sumagang',
        relationship: 'Younger Sister',
        Avatar: 'assets/sumagang/kring.jpg',
        occupation: 'Student',
        birthday: 'December 31, 2012',
        age: 9),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
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
                  builder: (context) => ProfilePage(user: user)));
            },
          ),
        );
      },
    ));
  }
}
