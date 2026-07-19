
import 'package:day9app/dashboard.dart';
import 'package:day9app/demo.dart';
import 'package:day9app/firstpg.dart';
import 'package:day9app/login.dart';
import 'package:day9app/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: OnboardingScreen());
  }}
      