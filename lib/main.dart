import 'package:flutter/material.dart';
import 'package:yt/widgets/list_grid.dart';
import 'package:yt/widgets/snackBarWidget.dart';
import 'package:yt/widgets/Button.dart';
import 'package:yt/widgets/Container_sized.dart';
import 'package:yt/widgets/rowsCols.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark , primaryColor: const Color.fromARGB(255, 140, 25, 160)
      ),
      home: SncackBarWidget(),
    );
  }
}