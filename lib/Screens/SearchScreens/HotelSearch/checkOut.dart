import 'package:cloud_app/Custom/customColors.dart';
import 'package:cloud_app/Screens/SearchScreens/CarSearch/carSearch.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

import 'hotelList.dart';


class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
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

            Padding(
              padding: const EdgeInsets.all(10.0),
              child:
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
                    Text('Fare Summary', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.darkText,
                    ),),
                    Text('Business Room, 2 Double Beds, Non Smoking', style: TextStyle(
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
                      child:  Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('Room Charges(GST Extra) ', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400 ,
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
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400 ,
                                    color: CustomColors.darkText,
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('GST on Room Charges', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400 ,
                                    color: CustomColors.darkText,
                                  ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('₹ 10.00', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400 ,
                                    color: CustomColors.darkText,
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('Taxes and Fee', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400 ,
                                    color: CustomColors.darkText,
                                  ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('₹ 10.00', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400 ,
                                    color: CustomColors.darkText,
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
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


                        ],
                      )

                    ),

                    SizedBox(height: 20,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                           // show popup
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Confirm Booking'),
                                  content: Text('Are you sure you want to confirm booking?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Confirm'),
                                    ),
                                  ],
                                );
                              })
                          ;
                        },
                        child: Text('Pay Now'),
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

