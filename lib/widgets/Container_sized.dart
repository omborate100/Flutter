import 'package:flutter/material.dart';

class ContainserSized extends StatelessWidget {
  const ContainserSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container'), backgroundColor: Colors.purple),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 100,
          child: Text('Hello world'),
        ),
      ),
    );
  }
}