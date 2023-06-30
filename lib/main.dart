import 'dart:html';
import 'package:mate_vibes/feature/donation/donation_success.dart';
import 'package:mate_vibes/feature/donation/people/diana/diana.dart';
import 'package:mate_vibes/feature/donation/people/diana/diana_master.dart';
import 'package:mate_vibes/feature/donation/people/diana/diana_upi.dart';
import 'package:mate_vibes/feature/donation/people/diana/diana_visa.dart';
import 'package:mate_vibes/feature/donation/people/list.dart';
import 'package:mate_vibes/feature/profile/logout.dart';
import 'package:mate_vibes/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mate_vibes/app_constants/app_colors.dart';

import 'package:mate_vibes/feature/app_logo/app_logo.dart';
import 'package:mate_vibes/feature/chat/chat.dart';

import 'package:mate_vibes/feature/create_account/create_account.dart';
import 'package:mate_vibes/feature/create_account/create_account_success.dart';

import 'package:mate_vibes/feature/donation/subscribe.dart';

import 'package:mate_vibes/feature/forgot_password/forgot_password.dart';
import 'package:mate_vibes/feature/homepage/bottom_bar.dart';
import 'package:mate_vibes/feature/homepage/home_page.dart';
import 'package:mate_vibes/feature/homepage/post.dart';
import 'package:mate_vibes/feature/homepage/story_view.dart';
import 'package:mate_vibes/feature/notifications/noti.dart';
import 'package:mate_vibes/feature/profile/profile_page.dart';

import 'package:mate_vibes/feature/sign_in/sign_in.dart';

import 'package:mate_vibes/feature/sign_up/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Navi());
  }
}
