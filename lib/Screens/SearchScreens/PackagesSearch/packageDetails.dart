import 'package:cloud_app/Custom/customColors.dart';
import 'package:cloud_app/Screens/SearchScreens/CarSearch/carSearch.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';


class PackageDetails extends StatefulWidget {
  @override
  _PackageDetailsState createState() => _PackageDetailsState();
}

class _PackageDetailsState extends State<PackageDetails> {
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
      body: Container(
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

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 75,
                 // border radius to 5
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      // add shadow to container
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.darkButton.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                 // add shadow

                 child: Column(
                   children:[
                     Text('Day Plan', style: TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.w500,
                     ),
                     ),
                     SizedBox(height: 10,),

                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/packageDetails');
                           },
                           child:Text('1. 01 Jul Mon', style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                           ),
                           ),
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/packageDetails');
                           },
                           child:Text('2. 02 Jul Tue', style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                           ),
                           ),
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/packageDetails');
                           },
                           child:Text('3. 03 Jul Wed', style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                           ),
                           ),
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/packageDetails');
                           },
                           child:Text('4. 04 Jul Thu', style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                           ),
                           ),
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/packageDetails');
                           },
                           child:Text('5. 05 Jul Fri', style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                           ),
                           ),
                         ),
                       ],
                     )
                   ]
                 )

                ),
                SizedBox(width: 10,),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: CustomColors.lightTheme,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color : Colors.white,
                                padding: EdgeInsets.all(2),

                                child: Text('Day 1 - Arrival in Goa(North Goa)',
                                  style: TextStyle(
                                    fontSize: 7,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),


                              Text('INCLUDED: Flight | Hotel | Transfer | Sightseeing',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                ),
                              )

                            ],
                          ),
                          SizedBox(height: 10,),

                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Flight from New Delhi to Goa(North) 06h 35m',
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                     Container(
                                       child: Row(
                                         children: [
                                           InkWell(
                                             onTap: (){
                                             },
                                             child: Text('Remove |',
                                               style: TextStyle(
                                                 fontSize: 10,
                                                 fontWeight: FontWeight.w500,
                                               ),
                                             ),
                                           ),
                                           SizedBox(width: 5,),

                                           InkWell(
                                             onTap: (){
                                             },
                                             child: Text('Change',
                                               style: TextStyle(
                                                 fontSize: 10,
                                                 fontWeight: FontWeight.w500,
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                     )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.airplanemode_active, size: 25),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '14:20',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                'Thu, 01 Jul',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                'New Delhi',
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),

                                    Expanded(
                                      child: Container(
                                        height: 2,// Adjust the width of the line
                                        color: CustomColors.lightTheme, // Adjust the line color
                                      ),
                                    ),
                                    SizedBox(width: 10,),

                                    Container(
                                      child:
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '14:20',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Thu, 01 Jul',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'New Delhi',
                                            style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),

                          SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('03h 15m Layover in Mumbai',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 10,),

                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.airplanemode_active, size: 25),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '14:20',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                'Thu, 01 Jul',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                'New Delhi',
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),

                                    Expanded(
                                      child: Container(
                                        height: 2,// Adjust the width of the line
                                        color: CustomColors.lightTheme, // Adjust the line color
                                      ),
                                    ),
                                    SizedBox(width: 10,),

                                    Container(
                                      child:
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '14:20',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Thu, 01 Jul',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'New Delhi',
                                            style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),

                          SizedBox(height: 10,),

                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Upgrade your flight for an improved-in-flight experience',
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                    InkWell(
                                      onTap: (){
                                      },
                                      child: Text('QUICK UPGRADE',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    )
                )
              ],
            ),

            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/logIn');
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

            SizedBox(height: 20,),


          ],
        ),
      ),
    );

  }
}

