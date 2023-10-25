import 'package:cloud_app/Custom/customColors.dart';
import 'package:cloud_app/Screens/SearchScreens/CarSearch/carSearch.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';



class FlightPassengerDetail extends StatefulWidget {
  @override
  _FlightPassengerDetailState createState() => _FlightPassengerDetailState();
}

class _FlightPassengerDetailState extends State<FlightPassengerDetail> {
  int _selectedPassengerCount = 1;
  bool isChecked = false;
  bool adultFrom= true;
  bool childredForm= false;
  bool infantForm= false;
  RangeValues _currentRangeValues = const RangeValues(5000, 15000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryTheme,
        title:  Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            Text(
              'Passenger Details',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: CustomColors.darkText,
              ),
            ),
          ],
        ),
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
                    Text(' Passenger Details', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.darkText,
                    ),),
                    Text('Note: Please make sure you enter the Name as per your Govt. photo id', style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.darkText,
                    ),
                    ),

                    SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        InkWell(
                          onTap: () {
                            setState(() {
                              adultFrom = !adultFrom;
                            });
                          },
                          child: Container(
                              padding:EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),

                              decoration: const BoxDecoration(
                              color: CustomColors.primaryTheme,
                               // top border radius
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              ),
                            ),
                            width: double.infinity,
                            child:Row(
                              children: [
                                Text('Adult 1', style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.darkText,
                                ),
                                ),
                                // make a down arrow icon
                                Spacer(),
                                Icon(Icons.keyboard_arrow_down, color: CustomColors.darkText,),
                              ],
                            )
                          ),
                        ),

                        Visibility(
                          visible: adultFrom,
                            child:Container(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                                  bottom: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                                ),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('NAME', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.otherText,
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            // remove default paddin g
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            labelText: 'First Name',
                                            // label text color
                                            labelStyle: TextStyle(color: CustomColors.lightTheme),
                                            hintText: 'First Name',
                                            hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            // remove default paddin g
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            labelText: 'Middle Name',
                                            // label text color
                                            labelStyle: TextStyle(color: CustomColors.lightTheme),
                                            hintText: 'Middle Name',
                                            hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            // remove default paddin g
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            labelText: 'Last Name',
                                            // label text color
                                            labelStyle: TextStyle(color: CustomColors.lightTheme),
                                            hintText: 'Last Name',
                                            hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),


                                  SizedBox(height:10,),
                                  Text('Gender', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.otherText,
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            // remove default paddin g
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            labelText: 'Gender',
                                            // label text color
                                            labelStyle: TextStyle(color: CustomColors.lightTheme),
                                            hintText: 'Gender',
                                            hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),


                                  SizedBox(height:10,),
                                  Text('Date of Birth', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.otherText,
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            // remove default paddin g
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            labelText: 'DOB',
                                            // label text color
                                            labelStyle: TextStyle(color: CustomColors.lightTheme),
                                            hintText: 'DOB',
                                            hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),


                                  SizedBox(height:10,),
                                  Text('Seating', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.otherText,
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            // remove default paddin g
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            labelText: 'No Preference',
                                            // label text color
                                            labelStyle: TextStyle(color: CustomColors.lightTheme),
                                            hintText: 'No Preference',
                                            hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height:10,),
                                  Text('Meal', style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.otherText,
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            // remove default paddin g
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                            border: OutlineInputBorder(),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: CustomColors.lightTheme),
                                            ),
                                            labelText: 'No Preference',
                                            // label text color
                                            labelStyle: TextStyle(color: CustomColors.lightTheme),
                                            hintText: 'No Preference',
                                            hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),



                                ],
                              ),
                            ),
                        )
                      ],
                    ),


                    SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        InkWell(
                          onTap: () {
                            setState(() {
                              childredForm = !childredForm;
                            });
                          },
                          child: Container(
                              padding:EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),

                              decoration: const BoxDecoration(
                                color: CustomColors.primaryTheme,
                                // top border radius
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                              ),
                              width: double.infinity,
                              child:Row(
                                children: [
                                  Text('Children 1', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.darkText,
                                  ),
                                  ),
                                  // make a down arrow icon
                                  Spacer(),
                                  Icon(Icons.keyboard_arrow_down, color: CustomColors.darkText,),
                                ],
                              )
                          ),
                        ),

                        Visibility(
                          visible: childredForm,
                          child:Container(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                                bottom: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                              ),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text('NAME', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'First Name',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'First Name',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Middle Name',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Middle Name',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Last Name',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Last Name',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                                SizedBox(height:10,),
                                Text('Gender', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Gender',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Gender',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                                SizedBox(height:10,),
                                Text('Date of Birth', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'DOB',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'DOB',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                                SizedBox(height:10,),
                                Text('Seating', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'No Preference',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'No Preference',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height:10,),
                                Text('Meal', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'No Preference',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'No Preference',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),



                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        InkWell(
                          onTap: () {
                            setState(() {
                              infantForm = !infantForm;
                            });
                          },
                          child: Container(
                              padding:EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),

                              decoration: const BoxDecoration(
                                color: CustomColors.primaryTheme,
                                // top border radius
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                              ),
                              width: double.infinity,
                              child:Row(
                                children: [
                                  Text('Infant 1', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.darkText,
                                  ),
                                  ),
                                  // make a down arrow icon
                                  Spacer(),
                                  Icon(Icons.keyboard_arrow_down, color: CustomColors.darkText,),
                                ],
                              )
                          ),
                        ),

                        Visibility(
                          visible: infantForm,
                          child:Container(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                                bottom: BorderSide(width: 2.0, color: CustomColors.primaryTheme),
                              ),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text('NAME', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'First Name',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'First Name',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Middle Name',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Middle Name',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Last Name',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Last Name',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                                SizedBox(height:10,),
                                Text('Gender', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Gender',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Gender',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                                SizedBox(height:10,),
                                Text('Date of Birth', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'DOB',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'DOB',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                                SizedBox(height:10,),
                                Text('Seating', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'No Preference',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'No Preference',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height:10,),
                                Text('Meal', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.otherText,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'No Preference',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'No Preference',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),



                              ],
                            ),
                          ),
                        )
                      ],
                    ),




                  ],
                ),
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
                    Text('Passenger Address', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.darkText,
                    ),),

                    SizedBox(height: 10,),

                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('POST CODE' , style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: CustomColors.darkText,
                                      ),),
                                      SizedBox(height: 5,),
                                      TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Post Code',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Post Code',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ],
                                  )


                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('ADDRESS LINE 1' , style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: CustomColors.darkText,
                                      ),),
                                      SizedBox(height: 5,),
                                      TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Address Line 1',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Address Line 1',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ],
                                  )


                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('ADDRESS LINE 2' , style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: CustomColors.darkText,
                                      ),),
                                      SizedBox(height: 5,),
                                      TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Address Line 2',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Address Line 2',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ],
                                  )


                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('CITY' , style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: CustomColors.darkText,
                                      ),),
                                      SizedBox(height: 5,),
                                      TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'City',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'City',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ],
                                  )


                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('COUNTRY' , style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: CustomColors.darkText,
                                      ),),
                                      SizedBox(height: 5,),
                                      TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Country',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Country',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ],
                                  )


                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('EMAIL ID' , style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: CustomColors.darkText,
                                      ),),
                                      SizedBox(height: 5,),
                                      TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Email Address',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Email Address',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ],
                                  )


                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('CONTACT NO' , style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: CustomColors.darkText,
                                      ),),
                                      SizedBox(height: 5,),
                                      TextField(
                                        decoration: InputDecoration(
                                          // remove default paddin g
                                          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: CustomColors.lightTheme),
                                          ),
                                          labelText: 'Contact Number',
                                          // label text color
                                          labelStyle: TextStyle(color: CustomColors.lightTheme),
                                          hintText: 'Contact Number',
                                          hintStyle: TextStyle(color: CustomColors.lightTheme, fontWeight: FontWeight.w400),

                                        ),
                                      ),
                                    ],
                                  )


                              ),

                            ],
                          ),

                          SizedBox(height: 20,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/checkOut');
                              },
                              child: Text('Proceed to Checkout'),
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
            ),

          ],
        ),
      ),
    );

  }
}

