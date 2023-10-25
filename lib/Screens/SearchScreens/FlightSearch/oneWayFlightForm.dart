import 'package:flutter/material.dart';
import '../../../Custom/customColors.dart';


class OneWayFlightForm extends StatelessWidget {
  const OneWayFlightForm({Key? key}) : super(key: key);

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
