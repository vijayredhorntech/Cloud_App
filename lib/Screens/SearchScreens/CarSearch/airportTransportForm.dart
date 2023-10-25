import 'package:flutter/material.dart';
import '../../../Custom/customColors.dart';


class AirportTransportForm extends StatefulWidget {
  const AirportTransportForm({Key? key}) : super(key: key);

  @override
  State<AirportTransportForm> createState() => _AirportTransportFormState();
}

class _AirportTransportFormState extends State<AirportTransportForm> {

  bool isReturnChecked = false;
  bool returnFormVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Icon(Icons.airplanemode_active),
            labelText: 'Airport',
            hintText: 'Enter Airport Name',
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
            prefixIcon: Icon(Icons.hotel),
            labelText: 'Hotel',
            hintText: 'Enter Hotel Name',
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
            labelText: 'Flight Arrival Date',
            hintText: 'Enter Flight Arrival Date',
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
            labelText: 'Flight Arrival Time',
            hintText: 'Enter Flight Arrival Time',
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
        Row(
          children: [
            Checkbox(
              value: isReturnChecked,
              // onChanged should update isReturnChecked, not value
              onChanged: (value) {
                setState(() {
                  isReturnChecked = value ?? false;
                  returnFormVisible = value ?? false;
                });
              },
            ),
            Text('Book Return'),
          ],
        ),
        Visibility(
          visible: returnFormVisible,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    prefixIcon: Icon(Icons.calendar_month),
                    labelText: 'Flight Departure Date',
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
                    labelText: 'Flight Departure Time',
                    hintText: 'Enter Flight Departure Time',
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
              ],
            ) ),
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
