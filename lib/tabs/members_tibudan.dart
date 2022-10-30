import 'package:flutter/material.dart';
import 'package:innovative_task1/profile_page.dart';
import 'package:innovative_task1/users.dart';

class Members_Tibudan extends StatefulWidget {
  const Members_Tibudan({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Members_Tibudan> createState() => _Members_TibudanState();
}

class _Members_TibudanState extends State<Members_Tibudan> {

  List<User> users = [
    const User(
      id: 2020302940,
      name: 'Chelsea Shaira E. Tibudan',
      relationship: 'Me',
      Avatar: 'assets/tibudan/tibudan.jpg',
      occupation: 'Student',
      birthday: 'February 10, 1993',
      age: 29
    ),
    const User(
        id: 2020300123,
        name: 'Ravenz O. E.',
        relationship: 'Fiancee',
        Avatar: 'assets/tibudan/ravenz.jpg',
        occupation: 'Ordinary Seaman',
        birthday: 'January 23, 1990',
        age: 31
    ),
    const User(
        id: 2020300728,
        name: 'Stephanie E. Dela Cruz',
        relationship: 'Mother',
        Avatar: 'assets/tibudan/stephanie.jpg',
        occupation: 'Public Accountant',
        birthday: 'July 28, 1971',
        age: 52
    ),
    const User(
        id: 2020300194,
        name: 'Niño Dominique E. Tibudan',
        relationship: 'Younger Brother',
        Avatar: 'assets/tibudan/niño.jpg',
        occupation: 'Chef Commis',
        birthday: 'January 16, 1994',
        age: 28
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
