import 'package:cloud_app/Screens/DashboardScreens/dashboard.dart';
import 'package:cloud_app/Screens/SearchScreens/HotelSearch/checkOut.dart';
import 'package:cloud_app/Screens/SearchScreens/HotelSearch/hotelDetails.dart';
import 'package:cloud_app/Screens/WelcomeScreens/forgetPassword.dart';
import 'package:flutter/material.dart';
import 'Custom/customColors.dart';
import 'Screens/SearchScreens/FlightSearch/flightLists.dart';
import 'Screens/SearchScreens/FlightSearch/flightPassengerDetails.dart';
import 'Screens/SearchScreens/FlightSearch/ticketDetail.dart';
import 'Screens/SearchScreens/HotelSearch/hotelList.dart';
import 'Screens/SearchScreens/HotelSearch/passengerDetails.dart';
import 'Screens/SearchScreens/PackagesSearch/packageDetails.dart';
import 'Screens/SearchScreens/PackagesSearch/packageFilter.dart';
import 'Screens/SearchScreens/PackagesSearch/packageSelection.dart';
import 'Screens/WelcomeScreens/logIn.dart';
import 'Screens/WelcomeScreens/signInOptions.dart';
import 'Screens/WelcomeScreens/signUp.dart';
import 'Screens/WelcomeScreens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cloud Travels',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:CustomColors.lightText),
        useMaterial3: true,
      ),
      home: Welcome(),
      // make routes for each screen
      routes: {


        // Welcome Screens Routes
            '/welcome': (context) => Welcome(),
            '/signInOptions': (context) => SignInOptions(),
            '/signUp': (context) => SignUp(),
            '/logIn': (context) => Login(),
            '/forgetPassword': (context) => ForgetPassword(),
        // Welcome Screens routes end here


        '/dashboard': (context) => Dashboard(),




        // Packages Routes
            '/packageFilter': (context) => PackageFilter(),
            '/packageSelection': (context) => PackageSelection(),
            '/packageDetails': (context) => PackageDetails(),
        // Packages routes end here


        // Hotel Routes
            '/hotelList': (context) => HotelList(),
            '/hotelDetails': (context) => HotelDetails(),
            '/passengerDetails': (context) => PassengerDetails(),
            '/checkOut': (context) => CheckOut(),
        // Hotel routes end here

        // Flight Routes here
        '/flightList': (context) => FlightList(),
        '/ticketDetail': (context) => TicketDetail(),
        '/flightPassengerDetail': (context) => FlightPassengerDetail(),

        // Flight Routes ends here
      },
    );
  }
}
