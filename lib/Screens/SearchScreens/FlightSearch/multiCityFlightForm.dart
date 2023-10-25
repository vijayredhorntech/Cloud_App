import 'package:flutter/material.dart';
import '../../../Custom/customColors.dart';


class MultiCityFlightForm extends StatelessWidget {
  const MultiCityFlightForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Flight 1'),
                ],
              ),
              SizedBox(height: 5,),

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

            ],
          ),
        ),
        SizedBox(height: 20,),


        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Flight 2'),
                   Spacer(),
                  InkWell(
                    onTap: (){
                      // when click on remove flight container
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.remove_circle_outline, color: Colors.red, size: 15,),
                          SizedBox(width: 5,),
                          Text('Remove Flight', style: TextStyle(color: Colors.red),),
                        ],
                      ),
                    ),
                  ),

                ],


              ),


              SizedBox(height: 5,),

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
            ],
          ),
        ),
        SizedBox(height: 20,),

        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Flight 3'),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      // when click on remove flight container
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.remove_circle_outline, color: Colors.red, size: 15,),
                          SizedBox(width: 5,),
                          Text('Remove Flight', style: TextStyle(color: Colors.red),),
                        ],
                      ),
                    ),
                  ),

                ],


              ),


              SizedBox(height: 5,),

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
            ],
          ),
        ),
        SizedBox(height: 20,),


        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.add_circle_outline, color: CustomColors.darkButton, size: 15,),
                    SizedBox(width: 5,),
                    Text('Add Flight', style: TextStyle(color: CustomColors.darkButton),),
                  ],
                ),
              ),
            ),

          ],


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
