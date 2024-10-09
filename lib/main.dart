import 'package:flutter/material.dart';
import 'package:rekanpabrik/components/navbarComponent.dart';
import 'package:rekanpabrik/pages/page.dart';
import 'package:rekanpabrik/shared/shared.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'poppins',
          canvasColor: thirdColor,
          primaryColor: primaryColor,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor:
                Colors.transparent, // Atur coklat sesuai kebutuhanmu
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => const WellcomePage(),
        '/login': (context) => login_page(),
        '/registerPelamar': (context) => register_pelamar(),
        '/pagePelamar': (context) => navbarComponent(),
      },
    );
  }
}
