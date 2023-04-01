import 'dart:html';

import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  DrawerPageState createState() => DrawerPageState();
}

class DrawerPageState extends State<DrawerPage> {
  int currentIndex = 0;
  int counter = 0;
  final screens = [
    Center(
      child: Text(
        'setting',
        style: TextStyle(
            backgroundColor: Colors.green,
            fontSize: 40,
            fontWeight: FontWeight.w900),
      ),
    ),
    Center(
      child: Text(
        'feed',
        style: TextStyle(
            backgroundColor: Colors.red,
            fontSize: 40,
            fontWeight: FontWeight.w900),
      ),
    ),
    Center(
      child: Text(
        'profile',
        style: TextStyle(
            backgroundColor: Colors.yellow,
            fontSize: 40,
            fontWeight: FontWeight.w900),
      ),
    ),
    Center(
      child: Text(
        'chat',
        style: TextStyle(
            backgroundColor: Colors.blue,
            fontSize: 40,
            fontWeight: FontWeight.w900),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('drawer'),
          backgroundColor: Colors.cyan,
        ),
        body: screens[currentIndex],
        drawer: Drawer(
            child: Column(
          children: [
            Column(
              children: [
                CircleAvatar(backgroundImage: AssetImage('asset/sel.jpg')),
                Text('username'),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('albozeyisano legziabher'),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('0930961202'),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.add),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('add account')
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Icon(Icons.chat),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('new group'),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Icon(Icons.mic),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('new channal')
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('contacts')
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('calls')
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Icon(Icons.message),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('saved message'),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('setting'),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Icon(Icons.sunny),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text('night mode')
              ],
            )
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black26,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            // type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.red,
            selectedItemColor: Colors.white,
            unselectedFontSize: 12,
            selectedFontSize: 34,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: 'setting',
                  backgroundColor: Colors.green,
                  tooltip: 'selome'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'feed',
                  backgroundColor: Colors.red,
                  tooltip: 'selam'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'profile',
                  backgroundColor: Colors.yellow,
                  tooltip: 'hiwot'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                  ),
                  label: 'chat',
                  backgroundColor: Colors.blue,
                  tooltip: 'gedam')
            ]),
        floatingActionButton: FloatingActionButton(
            tooltip: 'siferh',
            onPressed: () {
              setState(() {
                counter = counter + 1;
              });
            },
            backgroundColor: Colors.red,
            child: Column(
              children: [
                Icon(counter % 2 == 0 ? Icons.add : Icons.phone),
                Text(counter % 2 == 0 ? 'even' : 'odd')
              ],
            )));
  }
}
