import 'package:flutter/material.dart';
import 'package:innovative_task1/profile_page.dart';
import 'package:innovative_task1/users.dart';

class Members_Divinagracia extends StatefulWidget {
  const Members_Divinagracia({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Members_Divinagracia> createState() => _Members_DivinagraciaState();
}

class _Members_DivinagraciaState extends State<Members_Divinagracia> {

  List<User> users = [
    const User(
      id: 2020302619,
      name: 'Louie Phillip Divinagracia',
      relationship: 'Me',
      Avatar: 'assets/divinagracia/louie.jpg',
      occupation: 'Student',
      birthday: 'February 13, 2001',
      age: 21
    ),
    const User(
        id: 2020302507,
        name: 'Gilda Divinagracia',
        relationship: 'Mother', 
        Avatar: 'assets/divinagracia/gilda.jpg',
        occupation: 'Accountant',
        birthday: 'April 25, 1988',
        age: 59
    ),
    const User(
        id: 2020302940,
        name: 'Serafin Divinagracia',
        relationship: 'Father',
        Avatar: 'assets/divinagracia/serafin.jpg',
        occupation: 'Farmer',
        birthday: 'Febraury 16, 1970 ',
        age: 55
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
