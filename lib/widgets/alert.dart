import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Alert'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text('Show alert')),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('alert!!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('You have exceed the limit'),
                Text('Rmove item from basket')
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Approve')),
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Reject'))
          ],
        );
      });
}
