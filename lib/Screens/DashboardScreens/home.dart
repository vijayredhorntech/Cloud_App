import 'dart:ffi';

import 'package:cloud_app/Components/Dashboard/destinationCard.dart';
import 'package:flutter/material.dart';
import '../../Components/Dashboard/packageSearchCard.dart';
import '../../Custom/customColors.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool rememberMe = false;

  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
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
            padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 20),
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.network(
                  'https://cloud-travel.co.uk/live_flight/frontend/assets/images/logo.png',
                  height: 100,
                  width: 200,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: CustomColors.lightButton,
                          fontWeight: FontWeight.w400),
                      labelStyle: TextStyle(
                          color: CustomColors.darkText,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: CustomColors.lightText,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      prefixIcon:
                          Icon(Icons.search, color: CustomColors.lightButton),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.mic, color: CustomColors.lightButton),
                        onPressed: () {
                          // Handle mic button press
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: CustomColors.lightTheme),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: CustomColors.lightButton),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Looking for',
                        style: TextStyle(
                            color: CustomColors.darkText,
                            fontWeight: FontWeight.w500,
                            fontSize: 25),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle more button press
                        },
                        child: Text(
                          'More',
                          style: TextStyle(
                              color: CustomColors.lightButton,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    color: Colors.white,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PackageSearchCard(
                            image: 'assets/images/flight.png', text: 'Flights'
                        ),
                        SizedBox(width: 20,),
                        PackageSearchCard(
                            image: 'assets/images/hotel.png', text: 'Hotels'
                        ),
                        SizedBox(width: 20,),
                        PackageSearchCard(
                            image: 'assets/images/car.png', text: 'Cars'
                        ),
                        SizedBox(width: 20,),
                        PackageSearchCard(
                            image: 'assets/images/packages.png', text: 'Packages'
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New user welcome pack!',
                        style: TextStyle(
                            color: CustomColors.darkText,
                            fontWeight: FontWeight.w500,
                            fontSize: 23),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 90,
                    // add padding
                    decoration: BoxDecoration(
                      color:Colors.white,
                      // border radius
                      borderRadius: BorderRadius.circular(5),

                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),

                      children: [
                        Container(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                          width: 300,
                          // set backround and shadow of the container
                          decoration: BoxDecoration(
                            color:Colors.white,
                            // border radius
                            borderRadius: BorderRadius.circular(5),
                            // add shaodw
                            boxShadow: [
                              BoxShadow(
                                color: CustomColors.darkButton.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child:
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.speaker,color: CustomColors.darkText,size: 40,),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('10% OFF',style: TextStyle(
                                      color: CustomColors.darkText,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),),
                                  Text('First time booking',style: TextStyle(
                                      color: CustomColors.darkText,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16),),
                                ],
                              ),
                              Spacer(),
                              // make a clickable text
                              InkWell(
                                onTap: () {
                                  // Handle your callback
                                },
                                child:
                                // add icon
                                Icon(Icons.shopping_basket_outlined,color: CustomColors.darkText,),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                          width: 300,
                          // set backround and shadow of the container
                          decoration: BoxDecoration(
                            color:Colors.white,
                            // border radius
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: CustomColors.darkButton.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child:
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.star_half,color: CustomColors.darkText,size: 40,),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('VIP gold trail',style: TextStyle(
                                      color: CustomColors.darkText,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),),
                                  Text('Up to 20% off',style: TextStyle(
                                      color: CustomColors.darkText,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16),),
                                ],
                              ),
                              Spacer(),
                              // make a clickable text
                              InkWell(
                                onTap: () {
                                  // Handle your callback
                                },
                                child:
                                // add icon
                                Icon(Icons.lock,color: CustomColors.darkText,),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                  Visibility(
                    visible: _isVisible,
                    child: Column(
                      children: [
                        SizedBox(height: 35,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Long Stay Discount',
                              style: TextStyle(
                                color: CustomColors.darkText,
                                fontWeight: FontWeight.w500,
                                fontSize: 23,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          // make width to screen width
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border radius
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: CustomColors.darkButton.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        color: CustomColors.darkText,
                                        size: 40,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Stay longer and save more',
                                        style: TextStyle(
                                          color: CustomColors.darkText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Save up to 20% off on staying more than a week',
                                        style: TextStyle(
                                          color: CustomColors.darkText,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                ],
                              ),
                              // Add a clickable multiply icon in the top right corner
                              Positioned(
                                top: 5, // Adjust the top position as needed
                                right: 5, // Adjust the right position as needed
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _isVisible = false;
                                    });
                                  },
                                  child: Icon(
                                    Icons.close, // This is the multiply (close) icon
                                    color: CustomColors.darkText,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0, // Adjust the top position as needed
                                right: 0, // Adjust the right position as needed
                                child: InkWell(
                                  onTap: () {
                                    // Handle your callback for the "Learn more" action
                                  },
                                  child: Text(
                                    'Learn more...',
                                    style: TextStyle(
                                      color: CustomColors.darkText,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discover hotel in top destinations',
                        style: TextStyle(
                            color: CustomColors.darkText,
                            fontWeight: FontWeight.w500,
                            fontSize: 23),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListView(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),

                      scrollDirection: Axis.horizontal,
                      children: const [
                        DestinationCard(image: 'assets/images/mumbai.jpg', title: 'Mumbai', type: 'Shopping | Restaurants', price: '1,500',),
                        SizedBox(width: 20,),
                        DestinationCard(image: 'assets/images/jaipur.jpg', title: 'Jaipur', type: 'Shopping | Restaurants', price: '4,000',),
                        SizedBox(width: 20,),
                        DestinationCard(image: 'assets/images/london.jpg', title: 'London', type: 'Shopping | Restaurants', price: '45,000',),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
