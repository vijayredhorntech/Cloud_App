import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../Custom/customColors.dart';
import '../../Custom/customElements.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Add an AppBar
        backgroundColor: CustomColors.primaryTheme,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color:CustomColors.darkText),
        ),
        title: const Text(
          'Back',
          style: TextStyle(color:CustomColors.darkText),
        )
      ),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  color: CustomColors.primaryTheme,
                  width: double.infinity,
                  child: Image.network(
                      'https://cloud-travel.co.uk/live_flight/frontend/assets/images/logo.png'),
                ),

                // form container
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Center horizontally
                    children: [
                      // make a sign up form
                      SizedBox(height: 20),
                      Text(
                        'Sign Up',
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
                        keyboardType: TextInputType.visiblePassword,
                        label: 'Full Name',
                        hint: 'Enter your full name',
                      ),
                      InputField(
                        keyboardType: TextInputType.number,
                        label: 'Mobile Number',
                        hint: 'Enter your mobile number',
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // terms and conditions
                Column(
                  children: [
                    Padding(padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: SingleChildScrollView(
                        child:
                        RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'By signing up, you agree to our ',
                                  style: TextStyle(color: CustomColors.darkText),
                                ),
                                TextSpan(
                                    text: 'Terms & Conditions',
                                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print('Terms Clicked');
                                      }
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: TextStyle(color: CustomColors.darkText),
                                ),
                                TextSpan(
                                    text: 'Policies',
                                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print(' Policies Clicked');
                                      }
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // sign up button
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
                          Navigator.pushNamed(context, '/logIn');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.lightText),
                        ),
                      ),
                      const SizedBox(height: 20),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Already have an account ?', style: TextStyle(
                             color: CustomColors.darkText,
                             fontSize: 16,
                             fontWeight: FontWeight.w400,
                           ),),
                           GestureDetector(
                             onTap: () {
                               Navigator.pushNamed(context, '/logIn');
                             },
                             child: const Text(
                               ' Sign In',
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
