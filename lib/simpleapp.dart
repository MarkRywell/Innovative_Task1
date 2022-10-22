import 'package:flutter/material.dart';
import 'package:innovative_task1/tabs/Members.dart';

class SimpleApp extends StatefulWidget {
  const SimpleApp({Key? key}) : super(key: key);

  @override
  State<SimpleApp> createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Innovative Task 1"),
              bottom: const TabBar(
                tabs: [
                  Tab(text: "Members"),
                  Tab(text: "Tab2")
                ]
              )
            ),
            body: TabBarView(
              children: [
                  Members(),
                Icon(Icons.abc)
              ],
            )
          ),

        )

    );
  }
}
