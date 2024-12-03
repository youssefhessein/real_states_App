import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_states_app/constants.dart';
import 'package:real_states_app/widgets/main/main_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBgColor,
          canvasColor: kBgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                bodyLarge: TextStyle(color: kBodyTextColor),
                bodyMedium: TextStyle(color: kBodyTextColor),
              )),
      home: const MainSection(),
    );
  }
}
