import 'package:flutter/material.dart';
import 'package:yt/widgets/Dissmisible.dart';
import 'package:yt/widgets/DrawerWidget.dart';
import 'package:yt/widgets/alert.dart';
import 'package:yt/widgets/snackBarWidget.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Favorites'),
  //   Text('Events')
  // ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom navbar'),
      //   backgroundColor: Colors.purple,
      // ),
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DismisibleWidget(),
          DrawerWidget(),
          SncackBarWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Event'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: onTapped,
      ),
    );
  }
}
