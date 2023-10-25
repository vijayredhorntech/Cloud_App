
import 'package:cloud_app/Screens/DashboardScreens/home.dart';
import 'package:cloud_app/Screens/WelcomeScreens/logIn.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

import '../../Custom/customColors.dart';
import '../SearchScreens/searchHome.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Home(),         // Your home screen widget
    SearchHome(),         // Your home screen widget
    Login(),
    Login(),         // Your home screen widget
    Login(),// Your home screen widget
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // appBar: AppBar(
      //   backgroundColor: CustomColors.primaryTheme,
      //   automaticallyImplyLeading: false,
      //   toolbarHeight: 70,
      //   title: Padding(
      //     padding: const EdgeInsets.all(5.0),
      //     child: Row(
      //       children: [
      //           // add back icon here
      //         IconButton(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           icon: Icon(Icons.arrow_back_ios),
      //         ),
      //         Text('Back')
      //       ],
      //     ),
      //   ),
      // ),
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        height: 55,
        iconSize: 25,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.calendar_month),
            title: Text('Bookings'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
