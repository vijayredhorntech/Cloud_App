import 'package:flutter/material.dart';

import '../../Custom/customColors.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Add a Container for the background color
        constraints: const BoxConstraints(minHeight: double.infinity),
        color:CustomColors.primaryTheme,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Align containers to top and bottom
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network('https://cloud-travel.co.uk/live_flight/frontend/assets/images/logo.png'),
            ),
            Container(
              // add horizontal padding
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                children: [
                  ElevatedButton(
                    // add full width to button
                    style: ElevatedButton.styleFrom(
                      primary: CustomColors.lightButton,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signInOptions');
                    },
                    child: const Text('Let\'s Start', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.lightText
                    ),),
                  ),
                  const SizedBox(height: 10),
                   // add clickable text
                 GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signInOptions');
                    },
                    child: const Text(
                      'Click to continue',
                      style: TextStyle(
                        color: CustomColors.darkText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
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
