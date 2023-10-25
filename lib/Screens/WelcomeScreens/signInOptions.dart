import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../Custom/customColors.dart';

class SignInOptions extends StatelessWidget {
  const SignInOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Container(
          color: CustomColors.primaryTheme,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 500,
                  width: double.infinity,
                  child: Image.network(
                      'https://cloud-travel.co.uk/live_flight/frontend/assets/images/logo.png'),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // Center horizontally
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: CustomColors.lightButton,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signUp');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.lightText),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'or',
                        style: TextStyle(
                          color: CustomColors.darkText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: CustomColors.lightTheme,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/logIn');
                        },
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.darkText),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // add clickable icon
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '');
                            },
                            child: Image.network(
                              'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',
                              height: 20,
                              width: 20,
                            ),
                          ),
                          const SizedBox(width: 30),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '');
                            },
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf4n4pgM5I1wQofA6ggcEbcLq8A5JyppWA7olXu-D5Iu-l72GY&s',
                              height: 20,
                              width: 20,
                            ),
                          ),
                          const SizedBox(width: 30),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '');
                            },
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmFnwLZLADSev9q7t8xQpmdyit85CMylUNwAVH-wllrX36Nq8&s',
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/logIn');
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
        ),
      ),
    );
  }
}
