// import 'dart:ffi';

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color :Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding:EdgeInsets.zero,
                child: Container(
                padding: EdgeInsets.zero,
                child: Column(children: [CircleAvatar(
                  radius:40,
                  backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
                ),
                Text('Om Borate'),
                Text('omborate12@gmail.com'),]),
                color: Colors.amberAccent,
              )),
              ListTile(
                // leading: Icon(Icons.folder),
                title: Text('My Folder'),
              )
            ],
          ),
        ),
      ),
      appBar:
          AppBar(title: Text('Drawer widget'), backgroundColor: Colors.purple),
      body: Container(
        child: Center(
          child: Text('This is a drawer'),
        ),
      ),
    );
  }
}
