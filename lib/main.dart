import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/common/colors.dart';
import 'package:nft_app/pages/detail_page.dart';
import 'package:nft_app/pages/main_page.dart';
import 'package:nft_app/pages/trending_page.dart';
import 'package:nft_app/pages/uploud_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT App',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backgroundColor,
      ),
      initialRoute: MainPage.routeName,
      routes: {
        MainPage.routeName: (context) => const MainPage(),
        TrendingPage.routeName: (context) => const TrendingPage(),
        DetailPage.routeName: (context) => DetailPage(
              images: ModalRoute.of(context)?.settings.arguments as String,
            ),
        Uploudpage.routeName: (context) => const Uploudpage(),
      },
    );
  }
}
