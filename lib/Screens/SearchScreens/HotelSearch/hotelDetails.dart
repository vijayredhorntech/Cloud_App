import 'package:cloud_app/Custom/customColors.dart';
import 'package:cloud_app/Screens/SearchScreens/CarSearch/carSearch.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

import 'hotelList.dart';


class HotelDetails extends StatefulWidget {
  @override
  _HotelDetailsState createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  int _selectedPassengerCount = 1;
  bool isChecked = false;
  RangeValues _currentRangeValues = const RangeValues(5000, 15000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryTheme,
      ),
      body: Container(
        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
        color: CustomColors.primaryTheme,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 140, // Increase the height to accommodate the new container
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              width: double.infinity,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Jaipur (JAI) to Goa (GOI)',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: CustomColors.darkText,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Thu, May 25, 1 Passenger(1 Night) & Economy',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:  Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // make gesture detector for Filter , sort, map
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          height: 900,
                                          width: double.infinity,
                                          child: ListView(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(20),
                                                // shadow here
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: CustomColors.darkButton.withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 4,
                                                      offset: Offset(0, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Hotel Name', style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                    ),
                                                    SizedBox(height: 10,),

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
                                                          Text(
                                                            'Hotel Name',
                                                            style: TextStyle(color: CustomColors.darkText),
                                                          ),
                                                          DropdownButton<int>(
                                                            value: _selectedPassengerCount,
                                                            items: [
                                                              DropdownMenuItem<int>(
                                                                child: Text('Recommended'),
                                                                value: 1,
                                                              ),
                                                              DropdownMenuItem<int>(
                                                                child: Text('5 Star'),
                                                                value: 2,
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
                                              ),
                                              SizedBox(height: 20,),
                                              Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(20),
                                                // shadow here
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: CustomColors.darkButton.withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 4,
                                                      offset: Offset(0, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Hotel Rating', style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                    ),
                                                    SizedBox(height: 10,),

                                                    Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: CustomColors.lightTheme, // Border color
                                                        ),
                                                        borderRadius: BorderRadius.circular(4.0), // Border radius
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Spacer(),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),

                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Spacer(),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),

                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Spacer(),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),

                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Spacer(),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),

                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Spacer(),
                                                              Icon(Icons.star, color: CustomColors.darkButton,),

                                                            ],
                                                          ),
                                                        ],
                                                      ),

                                                    ),



                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20,),
                                              Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(20),
                                                // shadow here
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: CustomColors.darkButton.withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 4,
                                                      offset: Offset(0, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Your Budget (per night)', style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                    ),
                                                    Text('₹ 1000 - ₹ 50,000', style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w400,
                                                      color: CustomColors.darkText,
                                                    ),
                                                    ),
                                                    SizedBox(height: 10,),

                                                    Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: CustomColors.lightTheme, // Border color
                                                        ),
                                                        borderRadius: BorderRadius.circular(4.0), // Border radius
                                                      ),
                                                      child: RangeSlider(
                                                        values: _currentRangeValues,
                                                        max: 100000,
                                                        divisions: 5000,
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

                                                    ),



                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20,),
                                              Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(20),
                                                // shadow here
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: CustomColors.darkButton.withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 4,
                                                      offset: Offset(0, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Popular Filters', style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                    ),
                                                    SizedBox(height: 10,),

                                                    Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: CustomColors.lightTheme, // Border color
                                                        ),
                                                        borderRadius: BorderRadius.circular(4.0), // Border radius
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Text('Dry Cleaning & Laundry', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Text('Benquet hall ', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Text('Wheelchair Accessible', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Text('Parking', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),

                                                        ],
                                                      ),

                                                    ),



                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20,),
                                              Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(20),
                                                // shadow here
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: CustomColors.darkButton.withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 4,
                                                      offset: Offset(0, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Distance From Center of City', style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                    ),
                                                    SizedBox(height: 10,),

                                                    Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 12.0), // Add horizontal padding
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: CustomColors.lightTheme, // Border color
                                                        ),
                                                        borderRadius: BorderRadius.circular(4.0), // Border radius
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Text('Less than 1KM', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Text('Less than 3KM', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a checkbox
                                                              Checkbox(
                                                                value: isChecked,
                                                                onChanged: (bool? value) {
                                                                  setState(() {
                                                                    isChecked = value ?? false; // Update the state variable
                                                                  });
                                                                },
                                                              ),
                                                              Text('Less than 5KM', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                        ],
                                                      ),

                                                    ),



                                                  ],
                                                ),
                                              ),


                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.filter_list),
                                    SizedBox(width: 5),
                                    Text('Filter'),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          height: 300,
                                          width: double.infinity,
                                          child: ListView(
                                            children: [
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    value: isChecked,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        isChecked = value ?? false; // Update the state variable
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text('Most Recommended',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    value: isChecked,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        isChecked = value ?? false; // Update the state variable
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text('Distance from Closet Airport',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    value: isChecked,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        isChecked = value ?? false; // Update the state variable
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text('Distance from City Center',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    value: isChecked,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        isChecked = value ?? false; // Update the state variable
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text('Best Reviewed and  Low Price',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    value: isChecked,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        isChecked = value ?? false; // Update the state variable
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text('Price Low to High',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    value: isChecked,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        isChecked = value ?? false; // Update the state variable
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text('Top Rated',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                      color: CustomColors.darkText,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.sort),
                                    SizedBox(width: 5),
                                    Text('Sort'),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          height: 300,
                                          width: double.infinity,
                                          child: ListView(
                                            children: [
                                              Text('Map Here')
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.map),
                                    SizedBox(width: 5),
                                    Text('Map'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                      // Add your content inside this container
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ramada by Wyndham Jaipur',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.darkText,
                    ),
                    maxLines: 2, // Set to null for no maximum lines
                    overflow: TextOverflow.ellipsis, // Optional: add ellipsis when text is truncated
                  ),
                  SizedBox(height: 5,),
                  Text(
                    '917 East 12th Street, Austin, TX 78702, United States of America',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.darkText,
                    ),
                    maxLines: 2, // Set to null for no maximum lines
                    overflow: TextOverflow.ellipsis, // Optional: add ellipsis when text is truncated
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.star, color: CustomColors.darkButton, size: 20,),
                      Icon(Icons.star, color: CustomColors.darkButton, size: 20,),
                      Icon(Icons.star, color: CustomColors.darkButton, size: 20,),
                      SizedBox(width: 5,),
                      Text('3.0' , style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 400,
                    child: Image.asset('assets/images/mumbai.jpg', fit: BoxFit.cover,),
                  ),
                  Container(
                    width: 400,
                    child: Image.asset('assets/images/london.jpg', fit: BoxFit.cover,),
                  ),
                  Container(
                    width: 400,
                    child: Image.asset('assets/images/jaipur.jpg', fit: BoxFit.cover,),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                // shadow here
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.darkButton.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('₹ 1500.00', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.darkText,
                    ),
                    ),
                    Text('Business Room , 2 Bed Rooms, Non Smoking', style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.darkText,
                    ),
                    ),
                    SizedBox(height: 10,),

                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                          bottom: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Check In', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: CustomColors.darkText,

                              ),
                              ),
                              Text('12:00 PM', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold ,
                                color: CustomColors.darkText,
                              ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Check Out', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: CustomColors.darkText,

                              ),
                              ),
                              Text('04:00 PM', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold ,
                                color: CustomColors.darkText,
                              ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),

                    Container(
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('1 Adult, 1 Child', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: CustomColors.darkText,

                              ),
                              ),
                              Text('1 Room, 4 Night', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500 ,
                                color: CustomColors.darkText,
                              ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('₹ 1500.00', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: CustomColors.darkText,

                              ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),

                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                          bottom: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text('Total', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold ,
                                color: CustomColors.darkText,
                              ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('₹ 1500.00', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold ,
                                color: CustomColors.darkText,
                              ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/passengerDetails');
                        },
                        child: Text('Book Now'),
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

                  ],
                ),
              ),
            ),








          ],
        ),
      ),
    );

  }
}

