import 'dart:math';
import 'dart:typed_data';

import 'package:cab_pro/Menu.dart';
import 'package:cab_pro/Notifications.dart';
import 'package:cab_pro/aboutus.dart';
import 'package:cab_pro/accepted.dart';
import 'package:cab_pro/book1.dart';
import 'package:cab_pro/booked.dart';
import 'package:cab_pro/booking1.dart';
import 'package:cab_pro/booklast.dart';
import 'package:cab_pro/bookpayment.dart';
import 'package:cab_pro/canceled.dart';
import 'package:cab_pro/completed.dart';
import 'package:cab_pro/dashboard.dart';
import 'package:cab_pro/driverlogin.dart';
import 'package:cab_pro/drivermenu.dart';
import 'package:cab_pro/drprofile.dart';
import 'package:cab_pro/drprofilesettings.dart';
import 'package:cab_pro/drratings.dart';
import 'package:cab_pro/drsignup.dart';
import 'package:cab_pro/login.dart';
import 'package:cab_pro/login1.dart';
import 'package:cab_pro/logo.dart';
import 'package:cab_pro/forgotpassword.dart';
import 'package:cab_pro/newrides.dart';
import 'package:cab_pro/otp.dart';
import 'package:cab_pro/otpsubmit.dart';
import 'package:cab_pro/paymenthistory.dart';
import 'package:cab_pro/profile.dart';
import 'package:cab_pro/rate.dart';
import 'package:cab_pro/settings.dart';
import 'package:cab_pro/signup.dart';
import 'package:cab_pro/trips.dart';
import 'package:cab_pro/upcoming.dart';
import 'package:cab_pro/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'myRequests.dart';
 void main(){
   runApp(MyApp());
 }
 
 class MyApp extends StatelessWidget {
   const MyApp({super.key});


   @override
   Widget build(BuildContext context) {
     return  MaterialApp(
       debugShowCheckedModeBanner: false,
       home: accept(),
     );
   }
 }
