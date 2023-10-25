import 'package:flutter/material.dart';
import '../../../Custom/customColors.dart';


class CarHireForm extends StatelessWidget {
  const CarHireForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Icon(Icons.location_on_outlined),
            labelText: 'Pickup From',
            hintText: 'Enter Pickup Location',
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
            labelText: 'Drop Off To',
            hintText: 'Enter Drop Off Location',
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
            labelText: 'Pickup Date',
            hintText: 'Enter Pickup Date',
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
            labelText: 'Drop Off Date',
            hintText: 'Enter Drop Off Date',
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
            prefixIcon: Icon(Icons.lock_clock),
            labelText: 'Pickup Time',
            hintText: 'Enter Pickup Time',
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
            prefixIcon: Icon(Icons.lock_clock),
            labelText: 'Drop Off Time',
            hintText: 'Enter Drop Off Time',
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
            onPressed: (){},
            child: Text('Book your ride'),
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
