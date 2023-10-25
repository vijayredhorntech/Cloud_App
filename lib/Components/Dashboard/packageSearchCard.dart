import 'package:flutter/material.dart';

import '../../Custom/customColors.dart';


// make a class named PackageSearchCard with two parameters one for Images and other for text
class PackageSearchCard extends StatelessWidget {
  final String image;
  final String text;

  const PackageSearchCard({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
      onTap: () {
        // Handle click event
      },
      child: Container(
        padding: EdgeInsets.all(5),
        width: 150,
        // set backround and shadow of the container
        decoration: BoxDecoration(
          color: CustomColors.lightTheme,
          // border radius
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: CustomColors.darkTheme.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // add image here
            Image.asset(image,height: 60,),
            // add text here
            Text(
              text,
              style: TextStyle(
                  color: CustomColors.darkText,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
