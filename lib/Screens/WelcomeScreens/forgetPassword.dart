import 'package:flutter/material.dart';
import '../../Custom/customColors.dart';
import '../../Custom/customElements.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

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
          color: CustomColors.primaryTheme,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 60),
                      Text(
                        'Forget Password  ',
                        style: TextStyle(
                          color: CustomColors.darkText,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: SingleChildScrollView(
                              child: RichText(
                                textAlign: TextAlign.center, // Align the text to the center
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                      'Enter your email address to reset your password. You may need to check your spam folder or unblock ',
                                      style: TextStyle(
                                        color: CustomColors.otherText,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      InputField(
                        keyboardType: TextInputType.emailAddress,
                        label: 'Email Address',
                        hint: 'Enter your email address',
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: CustomColors.lightButton,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          // show pop up
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Reset Password'),
                                content: Text(
                                    'We have sent you an email with a link to reset your password.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      // navigate to login
                                      Navigator.pushNamed(context, '/logIn');
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.lightText),
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
