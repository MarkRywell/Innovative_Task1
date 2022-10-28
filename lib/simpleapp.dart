import 'package:flutter/material.dart';
import 'package:innovative_task1/tabs/members_divinagracia.dart';
import 'package:innovative_task1/tabs/members_gaje.dart';
import 'package:innovative_task1/tabs/members_benting.dart';
import 'package:innovative_task1/tabs/members_pena.dart';
import 'package:innovative_task1/tabs/members_senining.dart';
import 'package:innovative_task1/tabs/members_sumagang.dart';
import 'package:innovative_task1/tabs/members_tabudlong.dart';
import 'package:innovative_task1/tabs/members_tibudan.dart';

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
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
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
                  Tab(text: "Asareel Don Pena"),
                  Tab(text: "Chelsea Shaira C. Tibudan"),
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
                  Members(title: "Members Gaje"),
                  Members_Pena(title: "Members Pena"),
                  Members_Tibudan(title: "Members Tibudan"),
                  Members_Senining(title: "Members Senining"),
                  Members_Divinagracia(title: "Members Divinagracia"),
                  Members_Sumagang(title: "Members Sumagang"),
                  Members_Tabudlong(title: "Members Tabudlong"),
                  Members_Benting(title: "Members Benting"),
              ],
            )
          ),

        );
  }
}
