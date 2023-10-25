import 'package:cloud_app/Custom/customColors.dart';
import 'package:cloud_app/Screens/SearchScreens/FlightSearch/returnFlightForm.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

import 'multiCityFlightForm.dart';
import 'oneWayFlightForm.dart';


class FlightSearch extends StatefulWidget {


  @override
  _FlightSearchState createState() => _FlightSearchState();
}

class _FlightSearchState extends State<FlightSearch> {
  int _currentSelection = 0;
  int _selectedPassengerCount = 1;
  Map<int, Widget> _children = {
    0: Text(' Return '),
    1: Text(' One Way '),
    2: Text(' Multi City '),
  };
  int adultsCount = 1;
  int childrenCount = 0;
  int infantsCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.75,
      padding: EdgeInsetsDirectional.all(10),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
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

                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Select Passengers'),
                              content: Container(
                                height: 200, // Adjust the height as needed
                                child: Column(
                                  children: [
                                    _buildPassengerOption('Adults', 2), // Example: 2 adults
                                    _buildPassengerOption('Children', 1), // Example: 1 child
                                    _buildPassengerOption('Infants', 0), // Example: 0 infants
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          color: CustomColors.primaryTheme,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.person_add_sharp, color: CustomColors.darkButton),
                            SizedBox(width: 5),
                            Text('Passengers', style: TextStyle(color: CustomColors.darkButton)),
                          ],
                        ),
                      ),
                    ),

                    DropdownButton  (
                      value: _selectedPassengerCount,
                      items: [
                        DropdownMenuItem(
                          child: Text('Economy'),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('Business'),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text('First Class'),
                          value: 2,
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
                    ReturnFlightForm(),
                    // Content for Tab 2
                    OneWayFlightForm(),
                    // Content for Tab 3
                    MultiCityFlightForm(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPassengerOption(String label, int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                if (count > 0) {
                  setState(() {
                    count--;
                  });
                }
              },
            ),
            Text(count.toString()),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}





