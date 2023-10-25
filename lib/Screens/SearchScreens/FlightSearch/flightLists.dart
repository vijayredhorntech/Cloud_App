import 'package:cloud_app/Custom/customColors.dart';
import 'package:cloud_app/Screens/SearchScreens/CarSearch/carSearch.dart';
import 'package:cloud_app/Screens/SearchScreens/HotelSearch/hotelList.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';


class FlightList extends StatefulWidget {
  @override
  _FlightListState createState() => _FlightListState();
}

class _FlightListState extends State<FlightList> {
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
                            'Jaipur (JAI) to London (LHR)',
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
                                                    Text('STOP', style: TextStyle(
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
                                                              // make a radio button
                                                              Radio(
                                                                value: 1,
                                                                groupValue: _selectedPassengerCount,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _selectedPassengerCount = value as int;
                                                                  });
                                                                },
                                                              ),
                                                              Text('Non Stop', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a radio button
                                                              Radio(
                                                                value: 0,
                                                                groupValue: _selectedPassengerCount,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _selectedPassengerCount = value as int;
                                                                  });
                                                                },
                                                              ),
                                                              Text('2+ Stops', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a radio button
                                                              Radio(
                                                                value: 0,
                                                                groupValue: _selectedPassengerCount,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _selectedPassengerCount = value as int;
                                                                  });
                                                                },
                                                              ),
                                                              Text('1 Stop', style: TextStyle(
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
                                                    Text('DEPARTURE FROM ', style: TextStyle(
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
                                                              // make a radio button
                                                              Radio(
                                                                value: 1,
                                                                groupValue: _selectedPassengerCount,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _selectedPassengerCount = value as int;
                                                                  });
                                                                },
                                                              ),
                                                              Text('Before 6AM', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a radio button
                                                              Radio(
                                                                value: 0,
                                                                groupValue: _selectedPassengerCount,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _selectedPassengerCount = value as int;
                                                                  });
                                                                },
                                                              ),
                                                              Text('6AM To 12 Noon', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a radio button
                                                              Radio(
                                                                value: 0,
                                                                groupValue: _selectedPassengerCount,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _selectedPassengerCount = value as int;
                                                                  });
                                                                },
                                                              ),
                                                              Text('12 Noon To 6PM', style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                                color: CustomColors.darkText,
                                                              ),
                                                              ),


                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              // make a radio button
                                                              Radio(
                                                                value: 0,
                                                                groupValue: _selectedPassengerCount,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    _selectedPassengerCount = value as int;
                                                                  });
                                                                },
                                                              ),
                                                              Text('After 6PM', style: TextStyle(
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
                                                    Text('PRICE RANGE', style: TextStyle(
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
                                                  Text('Cheapest First',
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
                                                  Text('Cheapest Short Flight',
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
                                                  Text('Fastest First',
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
                                                  Text('Earliest First',
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
                                                  Text('Fewest Stops First',
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
            SizedBox(height: 20,),



            Container(
              // shdaow color
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkButton.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        child: Image.asset('assets/images/jaipur.jpg', width: 50),
                      ),
                      Text('UK', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('UK202', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        //make it italic
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:[
                          // flight icons
                          Icon(Icons.flight_takeoff, color: CustomColors.darkButton, size: 20,),
                          Text('23, May, 2023', style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: CustomColors.darkText,
                            fontStyle:  FontStyle.italic,
                          ),
                          ),
                        ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('IXC', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('0D 1H 30M', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('Non Stop', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_land_outlined, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('DEl', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 500.00', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),

                      // book now button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ticketDetail');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.darkButton,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('Book Now', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              // shdaow color
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkButton.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        child: Image.asset('assets/images/mumbai.jpg', width: 50),
                      ),
                      Text('Mumbai', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('UK202', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        //make it italic
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_takeoff, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('IXC', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('5D 1H 30M', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('Non Stop', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_land_outlined, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('DEl', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 500.00', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),

                      // book now button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ticketDetail');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.darkButton,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('Book Now', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              // shdaow color
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkButton.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        child: Image.asset('assets/images/london.jpg', width: 50),
                      ),
                      Text('Delhi', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('UK202', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        //make it italic
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_takeoff, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('IXC', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('5D 1H 30M', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('Non Stop', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_land_outlined, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('DEl', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 500.00', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),

                      // book now button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ticketDetail');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.darkButton,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('Book Now', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              // shdaow color
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkButton.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        child: Image.asset('assets/images/jaipur.jpg', width: 50),
                      ),
                      Text('UK', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('UK202', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        //make it italic
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_takeoff, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('IXC', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('0D 1H 30M', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('Non Stop', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_land_outlined, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('DEl', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 500.00', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),

                      // book now button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ticketDetail');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.darkButton,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('Book Now', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              // shdaow color
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkButton.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        child: Image.asset('assets/images/mumbai.jpg', width: 50),
                      ),
                      Text('Mumbai', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('UK202', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        //make it italic
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_takeoff, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('IXC', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('5D 1H 30M', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('Non Stop', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_land_outlined, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('DEl', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 500.00', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),

                      // book now button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ticketDetail');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.darkButton,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('Book Now', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              // shdaow color
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkButton.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        child: Image.asset('assets/images/london.jpg', width: 50),
                      ),
                      Text('Delhi', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('UK202', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        //make it italic
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_takeoff, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('IXC', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('5D 1H 30M', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('Non Stop', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_land_outlined, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('DEl', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 500.00', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),

                      // book now button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ticketDetail');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.darkButton,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('Book Now', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              // shdaow color
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkButton.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        child: Image.asset('assets/images/jaipur.jpg', width: 50),
                      ),
                      Text('UK', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('UK202', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        //make it italic
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_takeoff, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('IXC', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('0D 1H 30M', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('Non Stop', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_land_outlined, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('DEl', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 500.00', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),

                      // book now button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ticketDetail');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.darkButton,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('Book Now', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              // shdaow color
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkButton.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        child: Image.asset('assets/images/mumbai.jpg', width: 50),
                      ),
                      Text('Mumbai', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('UK202', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        //make it italic
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_takeoff, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('IXC', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('5D 1H 30M', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('Non Stop', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_land_outlined, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('DEl', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 500.00', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),

                      // book now button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ticketDetail');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.darkButton,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('Book Now', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              // shdaow color
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.darkButton.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0), // Adjust the radius as needed
                        child: Image.asset('assets/images/london.jpg', width: 50),
                      ),
                      Text('Delhi', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('UK202', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        //make it italic
                        fontStyle: FontStyle.italic,
                      ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_takeoff, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('IXC', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('5D 1H 30M', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('Non Stop', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children:[
                            // flight icons
                            Icon(Icons.flight_land_outlined, color: CustomColors.darkButton, size: 20,),
                            Text('23, May, 2023', style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.darkText,
                              fontStyle:  FontStyle.italic,
                            ),
                            ),
                          ]
                      ),
                      Text('15:30', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),
                      Text('DEl', style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.darkText,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 500.00', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.darkButton,
                      ),
                      ),

                      // book now button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ticketDetail');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: CustomColors.darkButton,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('Book Now', style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),


          ],
        ),
      ),
    );

  }
}

