import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF4B5BFD); // main purple/indigo
    const bgColor = Color(0xFFF5F6FB);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Banking App',
      theme: ThemeData(
        useMaterial3: false,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo,
        ).copyWith(
          primary: primaryColor,
          secondary: primaryColor,
          background: bgColor,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(size: 26),
          unselectedIconTheme: IconThemeData(size: 22),
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 11,
          ),
          showUnselectedLabels: true,
          elevation: 0,
        ),
      ),
      home: const MainScreen(),
    );
  }
}