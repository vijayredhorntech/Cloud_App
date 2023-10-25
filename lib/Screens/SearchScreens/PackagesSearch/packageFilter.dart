import 'package:cloud_app/Custom/customColors.dart';
import 'package:cloud_app/Screens/SearchScreens/CarSearch/carSearch.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';


class PackageFilter extends StatefulWidget {
  @override
  _PackageFilterState createState() => _PackageFilterState();
}

class _PackageFilterState extends State<PackageFilter> {
  int _selectedPassengerCount = 1;
  RangeValues _currentRangeValues = const RangeValues(5000, 15000);
  RangeValues _currentRangeNights = const RangeValues(3, 6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
        backgroundColor: CustomColors.primaryTheme,
      ),
      body:
      Container(
        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
        color: CustomColors.primaryTheme,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 140,
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Holiday',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: CustomColors.darkText)
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.beach_access),
                      SizedBox(width: 10),
                      Text('Packages',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent)
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Enjoy a memorable trip with your family',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText)
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('146/146 packages available',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                              color: CustomColors.darkText)
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              // border radius
              decoration: BoxDecoration(
                color: CustomColors.lightTheme,

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Family Packages',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.darkText)
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.beach_access)
                    ],
                  ),
                  DropdownButton(
                    value: _selectedPassengerCount,
                    items: [
                      DropdownMenuItem(
                        child: Text('For all (146)'),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text('All (146)'),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text('Family (50)'),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Text('Couples (40)'),
                        value: 9,
                      ),
                      DropdownMenuItem(
                        child: Text('Friends (30)'),
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
            ),

            SizedBox(height: 30),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Budget per person',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.darkText,
                        ),
                      ),
                      Text(
                        '(Rs. 1000 - Rs. 100000)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.darkText,
                        ),
                      ),
                    ],
                  ),
                  RangeSlider(
                    values: _currentRangeValues,
                    max: 50000,
                    divisions: 1000,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Duration Of Nights',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.darkText,
                        ),
                      ),
                      Text(
                        '(1N - 11N)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.darkText,
                        ),
                      ),
                    ],
                  ),
                  RangeSlider(
                    values: _currentRangeNights,
                    max: 20,
                    divisions: 1000,
                    labels: RangeLabels(
                      _currentRangeNights.start.round().toString(),
                      _currentRangeNights.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeNights = values;
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
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
                    'Place',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
              children: [
                Text(
                  'About Family Packages',
                  style: TextStyle(
                      color: CustomColors.darkText,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),


            SizedBox(height: 10),
            Container(
              height: 350,
              width: double.infinity, // Make the container width full
              child:  ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // gesture detector for the first row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      // make border radius to 15
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.lightTheme,
                      ),
                      width:MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                            children: [
                              Text(
                                'Flexi Packages',
                                style: TextStyle(
                                    color: CustomColors.darkText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                'Queen of hill station packages',
                                style: TextStyle(
                                    color: CustomColors.darkText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                            child: Image.asset(
                              'assets/images/london.jpg',
                              height: 200,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10),
                          const Row( mainAxisAlignment:   MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ooty Lake',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Text(
                                    'Doddabatta Peak',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '₹ 38,000',
                                    style: TextStyle(
                                      color: CustomColors.darkText,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Text(
                                    '₹ 35,000',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Text(
                                    'Per Person',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      // make border radius to 15
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.lightTheme,
                      ),
                      width:MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                            children: [
                              Text(
                                'Flexi Packages',
                                style: TextStyle(
                                    color: CustomColors.darkText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                'Queen of hill station packages',
                                style: TextStyle(
                                    color: CustomColors.darkText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                            child: Image.asset(
                              'assets/images/london.jpg',
                              height: 200,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10),
                          const Row( mainAxisAlignment:   MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ooty Lake',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Text(
                                    'Doddabatta Peak',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '₹ 38,000',
                                    style: TextStyle(
                                      color: CustomColors.darkText,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Text(
                                    '₹ 35,000',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Text(
                                    'Per Person',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      // make border radius to 15
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.lightTheme,
                      ),
                      width:MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items with space between
                            children: [
                              Text(
                                'Flexi Packages',
                                style: TextStyle(
                                    color: CustomColors.darkText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                'Queen of hill station packages',
                                style: TextStyle(
                                    color: CustomColors.darkText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                            child: Image.asset(
                              'assets/images/london.jpg',
                              height: 200,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10),
                          const Row( mainAxisAlignment:   MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ooty Lake',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Text(
                                    'Doddabatta Peak',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '₹ 38,000',
                                    style: TextStyle(
                                      color: CustomColors.darkText,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Text(
                                    '₹ 35,000',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Text(
                                    'Per Person',
                                    style: TextStyle(
                                        color: CustomColors.darkText,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),


            ),

            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/packageSelection');
                },
                child: Text('Choose Package'),
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

            SizedBox(height: 20,),


          ],
        ),
      ),
    );

  }
}

