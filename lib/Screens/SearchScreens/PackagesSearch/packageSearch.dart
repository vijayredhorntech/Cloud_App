import 'package:cloud_app/Custom/customColors.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

import '../CarSearch/airportTransportForm.dart';
import '../CarSearch/carHireForm.dart';


class PackageSearch extends StatefulWidget {
  @override
  _PackageSearchState createState() => _PackageSearchState();
}

class _PackageSearchState extends State<PackageSearch> {
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
                    Icon(Icons.beach_access),
                    SizedBox(width: 10,),
                    Text('Holiday Packages', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25
                    ),)

                  ],
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    prefixIcon: Icon(Icons.location_on_outlined),
                    labelText: 'Starting From',
                    hintText: 'Destination',
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
                    prefixIcon: Icon(Icons.calendar_month),
                    labelText: 'Starting Date',
                    hintText: 'Enter Starting Date',
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
                    prefixIcon: Icon(Icons.calendar_today_outlined),
                    labelText: 'Pickup Date',
                    hintText: 'Enter Pickup Date',
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
                        'Going To:',
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
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/packageFilter');

                    },
                    child: Text('Choose'),
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

