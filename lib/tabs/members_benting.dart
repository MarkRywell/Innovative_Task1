import 'package:flutter/material.dart';
import 'package:innovative_task1/profile_page_benting.dart';

class User_Benting{
  final int id, age;
  final String name, relationship, Avatar, occupation, birthday;

  const User_Benting({
    required this.id,
    required this.name,
    required this.relationship,
    required this.Avatar,
    required this.occupation,
    required this.birthday,
    required this.age
  });

}

class Members_Benting extends StatefulWidget {
  const Members_Benting({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Members_Benting> createState() => _Members_BentingState();
}

class _Members_BentingState extends State<Members_Benting> {

  List<User_Benting> users = [
    const User_Benting(
      id: 2020300787,
      name: 'Llane Graceza B. Benting',
      relationship: 'Me',
      Avatar: 'assets/benting/llane.JPG',
      occupation: 'Student',
      birthday: 'June 8, 2001',
      age: 21
    ),
    const User_Benting(
        id: 2020302507,
        name: 'Welyn G. Gaje',
        relationship: 'Mother',
        Avatar: 'assets/gaje/welyn.jpg',
        occupation: 'HouseWife',
        birthday: 'November 26, 1976',
        age: 45
    ),
    const User_Benting(
        id: 2020302940,
        name: 'Jory B. Gaje',
        relationship: 'Father',
        Avatar: 'assets/gaje/jory.jpg',
        occupation: 'Farmer',
        birthday: 'January 8, 1973 ',
        age: 49
    ),
    const User_Benting(
        id: 2020301996,
        name: 'Paul Jowey G. Gaje',
        relationship: 'Younger Brother',
        Avatar: 'assets/gaje/jowey.jpg',
        occupation: 'Student',
        birthday: 'May 31, 2001',
        age: 16
    ),
    const User_Benting(
        id: 2020305455,
        name: 'Joe Emmanuel G. Gaje',
        relationship: 'Youngest Brother',
        Avatar: 'assets/gaje/manny.jpg',
        occupation: 'Student',
        birthday: 'January 6, 2016',
        age: 6
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          final userbenting = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(userbenting.Avatar),
              ),
              title: Text(userbenting.name),
              subtitle: Text('${userbenting.relationship}'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfilePage(user :userbenting)
                ));
              },
            ),
          );
        },

      )
    );
  }
}
