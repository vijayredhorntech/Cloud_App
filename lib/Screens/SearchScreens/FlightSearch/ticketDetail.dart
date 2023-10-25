import 'package:cloud_app/Custom/customColors.dart';
import 'package:cloud_app/Screens/SearchScreens/CarSearch/carSearch.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';



class TicketDetail extends StatefulWidget {
  @override
  _TicketDetailState createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail> {
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
              height: 120, // Increase the height to accommodate the new container
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
                    child:
                     // input field with search icon
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          // remove the padding
                          contentPadding: EdgeInsets.zero,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: CustomColors.darkText,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: CustomColors.darkText,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
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
                    'Ticket Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.darkText,
                    ),
                    maxLines: 2, // Set to null for no maximum lines
                    overflow: TextOverflow.ellipsis, // Optional: add ellipsis when text is truncated
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      // flight icon
                      Icon(
                        Icons.flight_takeoff,
                        size: 20,
                        color: CustomColors.darkText,
                      ),
                      Text(
                        'Chandigarh (CHR) to Goa (GOI), 23 Apr 2021',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: CustomColors.darkText,
                        ),
                        maxLines: 2, // Set to null for no maximum lines
                        overflow: TextOverflow.ellipsis, // Optional: add ellipsis when text is truncated
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
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
                  Text('Fare Summary', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.darkText,
                  ),),
                  SizedBox(height: 10,),


                  Text('Traveller 1 Adult', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.darkText,
                  ),
                  ),
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

                                  Text('Base Fare X 1 ', style: TextStyle(
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
                                  Text('₹ 150.00', style: TextStyle(
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

                                  Text('Fee & Surcharges X 1', style: TextStyle(
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

                                  Text('Price 1 Adult(s)', style: TextStyle(
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
                        ],
                      )

                  ),
                  SizedBox(height: 20,),

                  Text('Traveller 2 Child', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.darkText,
                  ),
                  ),
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

                                  Text('Base Fare X 1 ', style: TextStyle(
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
                                  Text('₹ 150.00', style: TextStyle(
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

                                  Text('Fee & Surcharges X 1', style: TextStyle(
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

                                  Text('Price 1 Child(s)', style: TextStyle(
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
                        ],
                      )

                  ),
                  SizedBox(height: 20,),

                  Text('Traveller 1 Infant', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.darkText,
                  ),
                  ),
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

                                  Text('Base Fare X 1 ', style: TextStyle(
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
                                  Text('₹ 150.00', style: TextStyle(
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

                                  Text('Fee & Surcharges X 1', style: TextStyle(
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

                                  Text('Price 1 Child(s)', style: TextStyle(
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
                        ],
                      )

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

                  SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/flightPassengerDetail');
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

          ],
        ),
      ),
    );

  }
}

