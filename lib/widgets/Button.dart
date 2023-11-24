import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button"), backgroundColor: Colors.purple,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TextButton(child: Text('Press me'), onPressed: () {}, style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),)],
        ),
      ),
    );
  }
}