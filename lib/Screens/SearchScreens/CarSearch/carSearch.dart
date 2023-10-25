import 'package:cloud_app/Custom/customColors.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

import 'airportTransportForm.dart';
import 'carHireForm.dart';

class CarSearch extends StatefulWidget {
  @override
  _CarSearchState createState() => _CarSearchState();
}

class _CarSearchState extends State<CarSearch> {
  int _currentSelection = 0;
  int _selectedPassengerCount = 1;
  Map<int, Widget> _children = {
    0: Text(' Car Hire '),
    1: Text('  Airport Transport  '),
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsetsDirectional.all(10),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialSegmentedControl(
                      horizontalPadding: EdgeInsets.all(0),
                      verticalOffset: 5,
                      children: _children,
                      selectionIndex: _currentSelection,
                      borderColor: CustomColors.darkButton,
                      selectedColor: CustomColors.darkButton,
                      unselectedColor: CustomColors.primaryTheme,
                      selectedTextStyle: TextStyle(color: CustomColors.primaryTheme),
                      unselectedTextStyle: TextStyle(color: CustomColors.darkButton),
                      borderWidth: 1,
                      borderRadius: 50.0,
                      onSegmentTapped: (index) {
                        setState(() {
                          _currentSelection = index;
                        });
                      },
                    ),

                    // make a dropdown here for the number of passengers
                    DropdownButton(
                      value: _selectedPassengerCount,
                      items: [
                        DropdownMenuItem(
                          child: Text('1 passenger'),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('2 passengers'),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text('3 passengers'),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text('4 passengers'),
                          value: 9,
                        ),
                        DropdownMenuItem(
                          child: Text('5 passengers'),
                          value: 10,
                        ),
                      ],
                      onChanged: (int? value) { // Use int? here
                        setState(() {
                          _selectedPassengerCount = value ?? 1; // Assign a default value if value is null
                        });
                      },
                    ),

                  ],
                ),
                SizedBox(height: 20),
                IndexedStack(
                  index: _currentSelection,
                  children: [
                    // Content for Tab 1
                    CarHireForm(),
                    // Content for Tab 2
                    AirportTransportForm(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}

