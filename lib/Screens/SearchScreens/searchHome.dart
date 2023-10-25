import 'package:cloud_app/Custom/customColors.dart';
import 'package:cloud_app/Screens/SearchScreens/CarSearch/carSearch.dart';
import 'package:cloud_app/Screens/SearchScreens/FlightSearch/flightSearch.dart';
import 'package:cloud_app/Screens/SearchScreens/HotelSearch/hotelSearch.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

import 'HotelSearch/hotelSearch.dart';
import 'PackagesSearch/packageSearch.dart';

class SearchHome extends StatefulWidget {
  @override
  _SearchHomeState createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  int _currentSelection = 0;

  Map<int, Widget> _children = {
    0: Text('     Flights     '),
    1: Text('     Hotels     '),
    2: Text('     Cars     '),
    3: Text('     Packages     '),
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: CustomColors.primaryTheme,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                color: CustomColors.primaryTheme,
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkTheme.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Explore the',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.darkText)
                  ),
                  Text('Beautiful World',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.darkText)
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            MaterialSegmentedControl(
                 children: _children,
                 selectionIndex: _currentSelection,
                 borderColor: CustomColors.darkButton,
                 selectedColor: CustomColors.darkButton,
                 unselectedColor: CustomColors.primaryTheme,
                 selectedTextStyle: TextStyle(color: CustomColors.primaryTheme),
                 unselectedTextStyle: TextStyle(color: CustomColors.darkButton),
                 borderWidth: 1,
                 borderRadius: 4.0,
                 onSegmentTapped: (index) {
                   setState(() {
                     _currentSelection = index;
                   });
                 },
               ),
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IndexedStack(
                  index: _currentSelection,
                  children: [
                    // Content for Tab 1
                    FlightSearch(),
                    // Content for Tab 2
                    HotelSearch(),
                    // Content for Tab 3
                    CarSearch(),
                    // Content for Tab 4
                    PackageSearch(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );

  }
}

