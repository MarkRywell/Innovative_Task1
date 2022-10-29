import 'package:flutter/material.dart';
import 'package:innovative_task1/profile_page.dart';
import 'package:innovative_task1/users.dart';

class Members_Senining extends StatefulWidget {
  const Members_Senining({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Members_Senining> createState() => _Members_SeniningState();
}

class _Members_SeniningState extends State<Members_Senining> {

  List<User> users = [
    const User(
      id: 2020301996,
      name: 'Ralph Jayson D. Senining',
      relationship: 'Me',
      Avatar: 'assets/senining/rj.png',
      occupation: 'Student',
      birthday: 'May 31, 2001',
      age: 21
    ),
    const User(
        id: 2020301234,
        name: 'Maria Susan Senining',
        relationship: 'Mother',
        Avatar: 'assets/senining/Maria.jpg',
        occupation: 'HouseWife',
        birthday: 'February 23, 1968',
        age: 54 
    ),
    const User(
        id: 202030456,
        name: 'Roxein Mae Senining',
        relationship: 'Sister',
        Avatar: 'assets/senining/Roxein.jpg',
        occupation: 'Cofipac',
        birthday: 'February 3, 1991 ',
        age: 31
    ),
    const User(
        id: 202030789,
        name: 'Rowelo Senining',
        relationship: 'Father',
        Avatar: '',
        occupation: 'Painter',
        birthday: '',
        age: 54
    )
    
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
