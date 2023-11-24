import 'package:flutter/material.dart';

class SncackBarWidget extends StatelessWidget {
  const SncackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(content: Text('This is a SnackBar'),
                action: SnackBarAction(label: 'Undo', onPressed: () {}),);
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('show SnackBar')),
        ),
      ),
    );
  }
}
