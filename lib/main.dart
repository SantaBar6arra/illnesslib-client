import 'package:flutter/material.dart';
import 'package:illness_lib/constants.dart';
import 'package:illness_lib/views/history_view.dart';
import 'package:illness_lib/views/home_view.dart';
import 'package:illness_lib/views/login_view.dart';
import 'package:illness_lib/views/main_view.dart';
import 'package:illness_lib/views/settings_view.dart';
import 'package:illness_lib/views/signup_view.dart';

void main() {
  runApp(MaterialApp(
    title: 'IllnessLib',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: const HomeView(),
    initialRoute: loginRoute,
    routes: {
      loginRoute: (context) => const LoginView(),
      signupRoute: (context) => const SignupView(),
      mainRoute: (context) => const MainView(),
      settingsRoute: (context) => const SettingsView(),
      historyRoute: (context) => const HistoryView(),
    },
  ));
}