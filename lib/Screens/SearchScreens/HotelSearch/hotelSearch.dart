import 'package:cloud_app/Custom/customColors.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

import '../CarSearch/airportTransportForm.dart';
import '../CarSearch/carHireForm.dart';


class HotelSearch extends StatefulWidget {
  @override
  _HotelSearchState createState() => _HotelSearchState();
}

class _HotelSearchState extends State<HotelSearch> {
  int _selectedPassengerCount = 1;


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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Find Your Next Stay', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25
                    ),),
                    SizedBox(width: 10,),
                    Icon(Icons.hotel),


                  ],
                ),
                SizedBox(height: 20,),

                Container(
                  width: double.infinity, // Make the container width full
                  padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CustomColors.lightTheme, // Border color
                    ),
                    borderRadius: BorderRadius.circular(4.0), // Border radius
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                    children: [
                      Text(
                        'Where are you going?',
                        style: TextStyle(color: CustomColors.darkText),
                      ),
                      DropdownButton<int>(
                        value: _selectedPassengerCount,
                        items: [
                          DropdownMenuItem<int>(
                            child: Text('Shimla'),
                            value: 1,
                          ),
                          DropdownMenuItem<int>(
                            child: Text('Delhi'),
                            value: 2,
                          ),
                          DropdownMenuItem<int>(
                            child: Text('London'),
                            value: 3,
                          ),
                          DropdownMenuItem<int>(
                            child: Text('Japan'),
                            value: 4,
                          ),
                          DropdownMenuItem<int>(
                            child: Text('America'),
                            value: 5,
                          ),
                        ],
                        onChanged: (int? value) {
                          setState(() {
                            _selectedPassengerCount = value ?? 1;
                          });
                        },
                        style: TextStyle(color: CustomColors.darkText), // Text color of the dropdown
                        underline: Container( // Remove the default underline
                          height: 0,
                          color: Colors.transparent,
                        ),
                        dropdownColor: CustomColors.lightTheme, // Background color of the dropdown
                        icon: Icon(Icons.arrow_drop_down, color: CustomColors.darkText), // Dropdown icon color
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    prefixIcon: Icon(Icons.calendar_month),
                    labelText: 'Check In and Check Out',
                    hintText: 'Enter Check In and Check Out',
                    border: OutlineInputBorder( // Add a full border
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(color: CustomColors.lightTheme),
                    ),
                    enabledBorder: OutlineInputBorder( // Border when not focused
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(color: CustomColors.lightTheme),
                    ),
                    focusedBorder: OutlineInputBorder( // Border when focused
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(color: CustomColors.lightButton),
                    ),
                    hintStyle: TextStyle(color: CustomColors.lightButton, fontWeight: FontWeight.w400),
                    labelStyle: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 20,),


                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    prefixIcon: Icon(Icons.flag),
                    labelText: 'Nationality',
                    hintText: 'Indian',
                    border: OutlineInputBorder( // Add a full border
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(color: CustomColors.lightTheme),
                    ),
                    enabledBorder: OutlineInputBorder( // Border when not focused
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(color: CustomColors.lightTheme),
                    ),
                    focusedBorder: OutlineInputBorder( // Border when focused
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(color: CustomColors.lightButton),
                    ),
                    hintStyle: TextStyle(color: CustomColors.lightButton, fontWeight: FontWeight.w400),
                    labelStyle: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 20,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      children: [
                        Text(
                          'Rooms',
                          style: TextStyle(color: CustomColors.darkText),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.lightTheme, // Border color
                            ),
                            borderRadius: BorderRadius.circular(4.0), // Border radius
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                            children: [
                              DropdownButton<int>(
                                value: _selectedPassengerCount,
                                items: [
                                  DropdownMenuItem<int>(
                                    child: Text('1'),
                                    value: 1,
                                  ),
                                  DropdownMenuItem<int>(
                                    child: Text('2'),
                                    value: 2,
                                  ),
                                  DropdownMenuItem<int>(
                                    child: Text('3'),
                                    value: 3,
                                  ),
                                ],
                                onChanged: (int? value) {
                                  setState(() {
                                    _selectedPassengerCount = value ?? 1;
                                  });
                                },
                                style: TextStyle(color: CustomColors.darkText), // Text color of the dropdown
                                underline: Container( // Remove the default underline
                                  height: 0,
                                  color: Colors.transparent,
                                ),
                                dropdownColor: CustomColors.lightTheme, // Background color of the dropdown
                                icon: Icon(Icons.arrow_drop_down, color: CustomColors.darkText), // Dropdown icon color
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          'Adults',
                          style: TextStyle(color: CustomColors.darkText),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.lightTheme, // Border color
                            ),
                            borderRadius: BorderRadius.circular(4.0), // Border radius
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                            children: [
                              DropdownButton<int>(
                                value: _selectedPassengerCount,
                                items: [
                                  DropdownMenuItem<int>(
                                    child: Text('1'),
                                    value: 1,
                                  ),
                                  DropdownMenuItem<int>(
                                    child: Text('2'),
                                    value: 2,
                                  ),
                                  DropdownMenuItem<int>(
                                    child: Text('3'),
                                    value: 3,
                                  ),
                                ],
                                onChanged: (int? value) {
                                  setState(() {
                                    _selectedPassengerCount = value ?? 1;
                                  });
                                },
                                style: TextStyle(color: CustomColors.darkText), // Text color of the dropdown
                                underline: Container( // Remove the default underline
                                  height: 0,
                                  color: Colors.transparent,
                                ),
                                dropdownColor: CustomColors.lightTheme, // Background color of the dropdown
                                icon: Icon(Icons.arrow_drop_down, color: CustomColors.darkText), // Dropdown icon color
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          'Children',
                          style: TextStyle(color: CustomColors.darkText),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.lightTheme, // Border color
                            ),
                            borderRadius: BorderRadius.circular(4.0), // Border radius
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                            children: [
                              DropdownButton<int>(
                                value: _selectedPassengerCount,
                                items: [
                                  DropdownMenuItem<int>(
                                    child: Text('1'),
                                    value: 1,
                                  ),
                                  DropdownMenuItem<int>(
                                    child: Text('2'),
                                    value: 2,
                                  ),
                                  DropdownMenuItem<int>(
                                    child: Text('3'),
                                    value: 3,
                                  ),
                                ],
                                onChanged: (int? value) {
                                  setState(() {
                                    _selectedPassengerCount = value ?? 1;
                                  });
                                },
                                style: TextStyle(color: CustomColors.darkText), // Text color of the dropdown
                                underline: Container( // Remove the default underline
                                  height: 0,
                                  color: Colors.transparent,
                                ),
                                dropdownColor: CustomColors.lightTheme, // Background color of the dropdown
                                icon: Icon(Icons.arrow_drop_down, color: CustomColors.darkText), // Dropdown icon color
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          'Infants',
                          style: TextStyle(color: CustomColors.darkText),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.lightTheme, // Border color
                            ),
                            borderRadius: BorderRadius.circular(4.0), // Border radius
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                            children: [
                              DropdownButton<int>(
                                value: _selectedPassengerCount,
                                items: [
                                  DropdownMenuItem<int>(
                                    child: Text('1'),
                                    value: 1,
                                  ),
                                  DropdownMenuItem<int>(
                                    child: Text('2'),
                                    value: 2,
                                  ),
                                  DropdownMenuItem<int>(
                                    child: Text('3'),
                                    value: 3,
                                  ),
                                ],
                                onChanged: (int? value) {
                                  setState(() {
                                    _selectedPassengerCount = value ?? 1;
                                  });
                                },
                                style: TextStyle(color: CustomColors.darkText), // Text color of the dropdown
                                underline: Container( // Remove the default underline
                                  height: 0,
                                  color: Colors.transparent,
                                ),
                                dropdownColor: CustomColors.lightTheme, // Background color of the dropdown
                                icon: Icon(Icons.arrow_drop_down, color: CustomColors.darkText), // Dropdown icon color
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),


                  ],
                ),
                SizedBox(height: 20,),


                Container(
                  width: double.infinity, // Make the container width full
                  padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CustomColors.lightTheme, // Border color
                    ),
                    borderRadius: BorderRadius.circular(4.0), // Border radius
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                    children: [
                      Text(
                        'INR',
                        style: TextStyle(color: CustomColors.darkText),
                      ),
                      DropdownButton<int>(
                        value: _selectedPassengerCount,
                        items: [
                          DropdownMenuItem<int>(
                            child: Text('INR'),
                            value: 1,
                          ),
                          DropdownMenuItem<int>(
                            child: Text('USD'),
                            value: 2,
                          ),
                          DropdownMenuItem<int>(
                            child: Text('GBP'),
                            value: 3,
                          ),
                        ],
                        onChanged: (int? value) {
                          setState(() {
                            _selectedPassengerCount = value ?? 1;
                          });
                        },
                        style: TextStyle(color: CustomColors.darkText), // Text color of the dropdown
                        underline: Container( // Remove the default underline
                          height: 0,
                          color: Colors.transparent,
                        ),
                        dropdownColor: CustomColors.lightTheme, // Background color of the dropdown
                        icon: Icon(Icons.arrow_drop_down, color: CustomColors.darkText), // Dropdown icon color
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),


                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/hotelList');

                    },
                    child: Text('Search'),
                    style: ElevatedButton.styleFrom(
                      primary: CustomColors.lightButton,
                      onPrimary: CustomColors.lightText,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );

  }
}

