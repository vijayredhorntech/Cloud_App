import 'package:flutter/material.dart';
import '../../../Custom/customColors.dart';


class ReturnFlightForm extends StatelessWidget {
  const ReturnFlightForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Icon(Icons.location_on_outlined),
            labelText: 'Leaving From',
            hintText: 'Enter Leaving Location',
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
            prefixIcon: Icon(Icons.location_on_outlined),
            labelText: 'Going To',
            hintText: 'Enter Destination Location',
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
            labelText: 'Departure',
            hintText: 'Enter Departure Date',
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
            labelText: 'Returning',
            hintText: 'Enter Return Date',
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


        SizedBox(height: 30,),
        Row(
          children: [
            Text('Recent Search', style: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w500, fontSize: 20),),
          ],
        ),
        Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // make container for recent search
              Container(
                width:300,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.darkButton.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: CustomColors.lightButton,),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delhi', style: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w400),),
                        SizedBox(height: 5,),
                        Text('India', style: TextStyle(color: CustomColors.darkButton, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('12/12/2021', style: TextStyle(color: CustomColors.otherText, fontWeight: FontWeight.w400),),

                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, color: CustomColors.lightButton,),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mumbai', style: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w400),),
                        SizedBox(height: 5,),
                        Text('India', style: TextStyle(color: CustomColors.darkButton, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('12/12/2021', style: TextStyle(color: CustomColors.otherText, fontWeight: FontWeight.w400),),

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width:300,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.darkButton.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: CustomColors.lightButton,),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delhi', style: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w400),),
                        SizedBox(height: 5,),
                        Text('India', style: TextStyle(color: CustomColors.darkButton, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('12/12/2021', style: TextStyle(color: CustomColors.otherText, fontWeight: FontWeight.w400),),

                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, color: CustomColors.lightButton,),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mumbai', style: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w400),),
                        SizedBox(height: 5,),
                        Text('India', style: TextStyle(color: CustomColors.darkButton, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('12/12/2021', style: TextStyle(color: CustomColors.otherText, fontWeight: FontWeight.w400),),

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width:300,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.darkButton.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: CustomColors.lightButton,),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delhi', style: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w400),),
                        SizedBox(height: 5,),
                        Text('India', style: TextStyle(color: CustomColors.darkButton, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('12/12/2021', style: TextStyle(color: CustomColors.otherText, fontWeight: FontWeight.w400),),

                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, color: CustomColors.lightButton,),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mumbai', style: TextStyle(color: CustomColors.darkText, fontWeight: FontWeight.w400),),
                        SizedBox(height: 5,),
                        Text('India', style: TextStyle(color: CustomColors.darkButton, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('12/12/2021', style: TextStyle(color: CustomColors.otherText, fontWeight: FontWeight.w400),),

                      ],
                    ),
                  ],
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
              Navigator.pushNamed(context, '/flightList');

            },
            child: Text('Search Flights'),
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
    );
  }
}
