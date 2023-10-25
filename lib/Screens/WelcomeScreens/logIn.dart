import 'package:flutter/material.dart';
import '../../Custom/customColors.dart';
import '../../Custom/customElements.dart';

class Login extends StatelessWidget {
   Login({Key? key}) : super(key: key);

    bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryTheme,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: CustomColors.darkText),
        ),
        title: const Text(
          'Back',
          style: TextStyle(color: CustomColors.darkText),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  color: CustomColors.primaryTheme,
                  width: double.infinity,
                  child: Image.network(
                    'https://cloud-travel.co.uk/live_flight/frontend/assets/images/logo.png',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Log In',
                        style: TextStyle(
                          color: CustomColors.darkText,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      InputField(
                        keyboardType: TextInputType.emailAddress,
                        label: 'Email Address',
                        hint: 'Enter your email address',
                      ),
                      InputField(
                        keyboardType: TextInputType.emailAddress,
                        label: 'Password',
                        hint: 'Enter your password',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: rememberMe, // Set the initial value here if needed
                            onChanged: (value) {
                              rememberMe = value!;
                            },
                            activeColor: CustomColors.lightButton,
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                              color: CustomColors.darkText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forgetPassword');
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: CustomColors.darkText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: CustomColors.lightButton,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/dashboard');
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.lightText),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'or',
                        style: TextStyle(
                          color: CustomColors.darkText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: CustomColors.lightTheme,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '');
                        },
                        child: Text(
                          'Continue with',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.darkText),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          SizedBox(width: 30),
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
                          SizedBox(width: 30),
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
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account? ',
                            style: TextStyle(
                              color: CustomColors.darkText,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/signUp');
                            },
                            child: Text(
                              ' Sign Up',
                              style: TextStyle(
                                color: CustomColors.darkText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )
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
