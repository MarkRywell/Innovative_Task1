import 'package:flutter/material.dart';
import 'package:innovative_task1/tabs/member.dart';
import 'package:innovative_task1/users.dart';

class SimpleApp extends StatefulWidget {
  const SimpleApp({Key? key}) : super(key: key);

  @override
  State<SimpleApp> createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState(){
    tabController = TabController(length: 8, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
          child: Scaffold(
            appBar: AppBar(
              leading: Container(
                padding: const EdgeInsets.only(left: 10),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/gaje/mark.jpg'))) ,
              title: const ListTile(
                  title: Text("Innovative Task 1",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  )),
                  subtitle: Text("Group 2",
                  style: TextStyle(
                    fontWeight: FontWeight.w500
                  )),
              ),
              bottom:  TabBar(
                controller: tabController,
                  isScrollable: true,
                tabs: const [
                  Tab(text: "Mark Rywell G. Gaje"),
                  Tab(text: "Asareel Don Peña"),
                  Tab(text: "Chelsea Shaira E. Tibudan"),
                  Tab(text: "Ralph Jayson Senining"),
                  Tab(text: "Louie Phillip Divinagracia"),
                  Tab(text: "Gia Sumagang"),
                  Tab(text: "Van David Tabudlong"),
                  Tab(text: "Llane Graceza Benting"),
                ]
              )
            ),
            body: TabBarView(
              controller: tabController,
              children: const [
                    Member(title: "Members Gaje", members: [
                      User(
                        id: 2020302619,
                        name: 'Mark Rywell G. Gaje',
                        relationship: 'Me',
                        avatar: 'assets/gaje/mark.jpg',
                        occupation: 'Student',
                        birthday: 'May 31, 2001',
                        age: 21
                    ),
                      User(
                          id: 2020302618,
                          name: 'Welyn G. Gaje',
                          relationship: 'Mother',
                          avatar: 'assets/gaje/welyn.jpg',
                          occupation: 'HouseWife',
                          birthday: 'November 26, 1976',
                          age: 45
                      ),
                      User(
                          id: 2020302617,
                          name: 'Jory B. Gaje',
                          relationship: 'Father',
                          avatar: 'assets/gaje/jory.jpg',
                          occupation: 'Farmer',
                          birthday: 'January 8, 1973 ',
                          age: 49
                      ),
                      User(
                          id: 2020302616,
                          name: 'Paul Jowey G. Gaje',
                          relationship: 'Younger Brother',
                          avatar: 'assets/gaje/jowey.jpg',
                          occupation: 'Student',
                          birthday: 'May 31, 2001',
                          age: 16
                      ),
                      User(
                          id: 2020302615,
                          name: 'Joe Emmanuel G. Gaje',
                          relationship: 'Youngest Brother',
                          avatar: 'assets/gaje/manny.jpg',
                          occupation: 'Student',
                          birthday: 'January 6, 2016',
                          age: 6
                      )]
                    ),
                   Member(title: "Members Peña", members: [
                    User(
                        id: 2020302507,
                        name: 'Asareel Don F. Peña',
                        relationship: 'Me',
                        avatar: 'assets/pena/don.png',
                        occupation: 'Student',
                        birthday: 'August 15, 2001',
                        age: 21
                    ),

                    User(
                        id: 2020300786,
                        name: 'Rowena F. Peña',
                        relationship: 'Mother',
                        avatar: 'assets/pena/rowena.png',
                        occupation: 'HouseWife',
                        birthday: 'February 11, 1975',
                        age: 47
                    ),

                    User(
                        id: 2020300785,
                        name: 'Julieto E. Peña',
                        relationship: 'Father',
                        avatar: 'assets/pena/julieto.png',
                        occupation: 'Company Guard',
                        birthday: 'May 8, 1959',
                        age: 63
                    ),

                    User(
                        id: 2020300788,
                        name: 'Karl Britt F. Peña',
                        relationship: 'Sister',
                        avatar: 'assets/pena/britt.png',
                        occupation: 'Student',
                        birthday: 'April 19, 1995',
                        age: 27
                    ),
                    User(
                        id:2020300789,
                        name: 'Jephone Jun F. Peña',
                        relationship: 'Brother',
                        avatar: 'assets/pena/jephone.png',
                        occupation: 'Student',
                        birthday: 'Septemper 14, 1997',
                        age: 25
                    )]
                  ),
                  Member(title: "Members Tibudan", members: [
                    User(
                    id: 2020302940,
                    name: 'Chelsea Shaira E. Tibudan',
                    relationship: 'Me',
                        avatar: 'assets/tibudan/tibudan.jpg',
                    occupation: 'Student',
                    birthday: 'February 10, 1993',
                    age: 29
                      ),
                    User(
                        id: 2020300123,
                        name: 'Ravenz O. E.',
                        relationship: 'Fiancee',
                        avatar: 'assets/tibudan/ravenz.jpg',
                        occupation: 'Ordinary Seaman',
                        birthday: 'January 23, 1990',
                        age: 31
                    ),
                    User(
                        id: 2020300728,
                        name: 'Stephanie E. Dela Cruz',
                        relationship: 'Mother',
                        avatar: 'assets/tibudan/stephanie.jpg',
                        occupation: 'Public Accountant',
                        birthday: 'July 28, 1971',
                        age: 52
                    ),
                    User(
                        id: 2020300194,
                        name: 'Niño Dominique E. Tibudan',
                        relationship: 'Younger Brother',
                        avatar: 'assets/tibudan/niño.jpg',
                        occupation: 'Chef Commis',
                        birthday: 'January 16, 1994',
                        age: 28
                    )]
                  ),
                Member(title: "Members Senining", members: [
                  User(
                      id: 2020301996,
                      name: 'Ralph Jayson D. Senining',
                      relationship: 'Me',
                      avatar: 'assets/senining/rj.png',
                      occupation: 'Student',
                      birthday: 'May 31, 2001',
                      age: 21
                  ),
                  User(
                      id: 2020301234,
                      name: 'Maria Susan Senining',
                      relationship: 'Mother',
                      avatar: 'assets/senining/Maria.jpg',
                      occupation: 'HouseWife',
                      birthday: 'February 23, 1968',
                      age: 54
                  ),
                  User(
                      id: 202030456,
                      name: 'Roxein Mae Senining',
                      relationship: 'Sister',
                      avatar: 'assets/senining/Roxein.jpg',
                      occupation: 'Cofipac',
                      birthday: 'February 3, 1991 ',
                      age: 31
                  ),
                  User(
                      id: 202030789,
                      name: 'Rowelo Senining',
                      relationship: 'Father',
                      avatar: 'Icons.person',
                      occupation: 'Painter',
                      birthday: 'May 28',
                      age: 54
                  )],
                ),
                  Member(title: "Members Divinagracia", members: [
                    User(
                        id: 2020302619,
                        name: 'Louie Phillip Divinagracia',
                        relationship: 'Me',
                        avatar: 'assets/divinagracia/lp.png',
                        occupation: 'Student',
                        birthday: 'February 13, 2001',
                        age: 21
                    ),
                    User(
                        id: 2020302507,
                        name: 'Gilda Divinagracia',
                        relationship: 'Mother',
                        avatar: 'assets/divinagracia/gilda.jpg',
                        occupation: 'Accountant',
                        birthday: 'April 25, 1988',
                        age: 59
                    ),
                    User(
                        id: 2020302940,
                        name: 'Serafin Divinagracia',
                        relationship: 'Father',
                        avatar: 'assets/divinagracia/serafin.jpg',
                        occupation: 'Farmer',
                        birthday: 'Febraury 16, 1970 ',
                        age: 55
                    )],
                  ),
                  Member(title: "Members Sumagang", members: [
                    User(
                        id: 2020302955,
                        name: 'Gia C. Sumagang',
                        relationship: 'Me',
                        avatar: 'assets/sumagang/gia.jpg',
                        occupation: 'Student',
                        birthday: 'August 30, 2002',
                        age: 20),
                    User(
                        id: 2751643297,
                        name: 'Vivian C. Sumagang',
                        relationship: 'Mother',
                        avatar: 'assets/sumagang/vivian.jpg',
                        occupation: 'HouseWife',
                        birthday: 'June 20, 1980',
                        age: 43),
                    User(
                        id: 27532522332,
                        name: 'Remegio L. Sumagang',
                        relationship: 'Father',
                        avatar: 'assets/sumagang/remegio.jpg',
                        occupation: 'Farmer',
                        birthday: 'October 1, 1969 ',
                        age: 53),
                    User(
                        id: 0030,
                        name: 'Keren Keziah C. Sumagang',
                        relationship: 'Younger Sister',
                        avatar: 'assets/sumagang/kring.jpg',
                        occupation: 'Student',
                        birthday: 'December 31, 2012',
                        age: 9
                    ),]
                  ),
                  Member(title: "Members Tabudlong", members: [
                    User(
                        id: 2020302123,
                        name: 'Van David T. Tabudlong',
                        relationship: 'Me',
                        avatar: 'assets/tabudlong/van.jpg',
                        occupation: 'Student',
                        birthday: 'June 17, 2002',
                        age: 20
                    ),
                    User(
                        id: 2020302234,
                        name: 'Ian T. Tabudlong',
                        relationship: 'Father',
                        avatar: 'assets/tabudlong/ian.jpg',
                        occupation: 'Teacher',
                        birthday: 'December 21, 1975',
                        age: 46
                    ),
                    User(
                        id: 2020302345,
                        name: 'Neneth T. Tabudlong',
                        relationship: 'Mother',
                        avatar: 'assets/tabudlong/neneth.jpg',
                        occupation: 'Government Employee',
                        birthday: 'August 26, 1976 ',
                        age: 45
                    ),
                    User(
                        id: 2020301456,
                        name: 'Val Ian T. Tabudlong',
                        relationship: 'Older Brother',
                        avatar: 'assets/tabudlong/val.jpg',
                        occupation: 'Police',
                        birthday: 'December 03, 1996',
                        age: 25
                    ),
                    User(
                        id: 2020305567,
                        name: 'Valerie T. Tabudlong',
                        relationship: 'Youngest Sister',
                        avatar: 'assets/tabudlong/valerie.jpg',
                        occupation: 'Student',
                        birthday: 'April 19, 2005',
                        age: 17
                    ),],
                  ),
                  Member(title: "Members Benting", members: [
                    User(
                        id: 2020300787,
                        name: 'Llane Graceza B. Benting',
                        relationship: 'Me',
                        avatar: 'assets/benting/llane.JPG',
                        occupation: 'Student',
                        birthday: 'June 8, 2001',
                        age: 21
                    ),
                    User(
                        id: 2020300786,
                        name: 'Mercy B. Benting',
                        relationship: 'Mother',
                        avatar: 'assets/benting/mac.jpg',
                        occupation: 'HouseWife',
                        birthday: 'May 11, 1984',
                        age: 38
                    ),

                    User(
                        id: 2020300785,
                        name: 'Roberto B. Benting',
                        relationship: 'Father',
                        avatar: 'assets/benting/roger.jpg',
                        occupation: 'Farmer',
                        birthday: 'May 13, 1981 ',
                        age: 41
                    ),

                    User(
                        id: 2020300788,
                        name: 'Nashbert B. Benting',
                        relationship: 'Youngest Brother',
                        avatar: 'assets/benting/nash.jpg',
                        occupation: 'Student',
                        birthday: 'April 25, 2005',
                        age: 17
                    ),
                    User(
                        id:2020300789,
                        name: 'Llane Glaiza B. Benting',
                        relationship: 'Younger Sister',
                        avatar: 'assets/benting/llane2.jpg',
                        occupation: 'Student',
                        birthday: 'August 3, 2006',
                        age: 16
                    ),

                    User(
                        id:2020300790,
                        name: 'Llane Alyzah B. Benting',
                        relationship: 'Younger Sister',
                        avatar: 'assets/benting/llane3.jpg',
                        occupation: 'Student',
                        birthday: 'January 17, 2015',
                        age: 7
                    ),
                    User(
                        id: 2020300790,
                        name: 'Llane Alziah B. Benting',
                        relationship: 'Youngest Sister',
                        avatar: 'assets/benting/llane4.jpg',
                        occupation: 'None',
                        birthday: 'December 30, 2020',
                        age: 1
                    ),],
                  )

                  // Members(title: "Members Gaje"),
                  // Members_Pena(title: "Members Pena"),
                  // Members_Tibudan(title: "Members Tibudan"),
                  // Members_Senining(title: "Members Senining"),
                  // Members_Divinagracia(title: "Members Divinagracia"),
                  // Members_Sumagang(title: "Members Sumagang"),
                  // Members_Tabudlong(title: "Members Tabudlong"),
                  // Members_Benting(title: "Members Benting"),
              ],
            )
          ),

        );
  }
}
