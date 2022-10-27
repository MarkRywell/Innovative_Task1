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
        id: 2020300786,
        name: 'Mercy B. Benting',
        relationship: 'Mother',
        Avatar: 'assets/benting/mac.jpg',
        occupation: 'HouseWife',
        birthday: 'May 11, 1984',
        age: 38
    ),

    const User_Benting(
        id: 2020300785,
        name: 'Roberto B. Benting',
        relationship: 'Father',
        Avatar: 'assets/benting/roger.jpg',
        occupation: 'Farmer',
        birthday: 'May 13, 1981 ',
        age: 41
    ),

    const User_Benting(
        id: 2020300788,
        name: 'Nashbert B. Benting',
        relationship: 'Youngest Brother',
        Avatar: 'assets/benting/nash.jpg',
        occupation: 'Student',
        birthday: 'April 25, 2005',
        age: 17
    ),
    const User_Benting(
        id:2020300789,
        name: 'Llane Glaiza B. Benting',
        relationship: 'Youngest Sister',
        Avatar: 'assets/benting/llane2.jpg',
        occupation: 'Student',
        birthday: 'August 3, 2006',
        age: 16
    ),

        const User_Benting(
        id:2020300790,
        name: 'Llane Alyzah B. Benting',
        relationship: 'Youngest Sister',
        Avatar: 'assets/benting/llane3.jpg',
        occupation: 'Student',
        birthday: 'January 17, 2015',
        age: 7
    ),
    const User_Benting(
        id: 2020300790,
        name: 'Llane Alziah B. Benting',
        relationship: 'Youngest Sister',
        Avatar: 'assets/benting/llane3.jpg',
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
