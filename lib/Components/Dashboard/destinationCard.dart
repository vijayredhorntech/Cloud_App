import 'package:flutter/material.dart';

import '../../Custom/customColors.dart';


// make a class named PackageSearchCard with two parameters one for Images and other for text
class DestinationCard extends StatelessWidget {
  final String image;
  final String title;
  final String type;
  final String price;

  const DestinationCard({Key? key, required this.image, required this.title, required this.type, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: () {
          // Handle click event
        },
        child:
        Container(
          padding: EdgeInsets.all(5),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(image),
              ),
               Text( title ,style: TextStyle(
                  color: CustomColors.darkText,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),),
               Text(type,style: TextStyle(
                  color: CustomColors.darkText,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),),
               Text('₹ $price per night average',style: TextStyle(
                  color: CustomColors.darkText,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),),
            ],
          ),
        ),
      );
  }
}
