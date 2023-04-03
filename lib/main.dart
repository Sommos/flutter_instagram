import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ProfilePage(),
      );
    },);
  }
}