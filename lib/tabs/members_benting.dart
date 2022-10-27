import 'package:flutter/material.dart';
import 'package:innovative_task1/profile_page.dart';

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
  const Members({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {

  List<User> users = [
    const User(
      id: 2020300787,
      name: 'Llane Graceza B. Benting',
      relationship: 'Me',
      Avatar: 'assets/benting/llane.JPG',
      occupation: 'Student',
      birthday: 'June 8, 2001',
      age: 21
    ),
    const User(
        id: 2020300786,
        name: 'Mercy B. Benting',
        relationship: 'Mother',
        Avatar: 'assets/gaje/mac.jpg',
        occupation: 'HouseWife',
        birthday: 'May 11, 1984',
        age: 38
    ),
    const User(
        id: 2020300785,
        name: 'Roberto B. Benting',
        relationship: 'Father',
        Avatar: 'assets/gaje/roger.jpg',
        occupation: 'Farmer',
        birthday: 'May 13, 1981 ',
        age: 41
    ),
    const User(
        id: 2020300788,
        name: 'Nashbert B. Benting',
        relationship: 'Youngest Brother',
        Avatar: 'assets/gaje/nash.jpg',
        occupation: 'Student',
        birthday: 'April 25, 2005',
        age: 17
    ),
    const User(
        id:2020300789,
        name: 'Llane Glaiza B. Benting',
        relationship: 'Youngest Sister',
        Avatar: 'assets/gaje/llane2.jpg',
        occupation: 'Student',
        birthday: 'August 3, 2006',
        age: 16
    ),
        const User(
        id:2020300790,
        name: 'Llane Alyzah B. Benting',
        relationship: 'Youngest Sister',
        Avatar: 'assets/gaje/llane3.jpg',
        occupation: 'Student',
        birthday: 'January 17, 2015',
        age: 7
    ),
    const User(
        id: 2020300790,
        name: 'Llane Alziah B. Benting',
        relationship: 'Youngest Sister',
        Avatar: 'assets/gaje/llane3.jpg',
        occupation: 'None',
        birthday: 'December 30, 2020',
        age: 1
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
