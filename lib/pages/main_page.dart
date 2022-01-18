import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/common/colors.dart';
import 'package:nft_app/pages/account_page.dart';
import 'package:nft_app/pages/home_page.dart';
import 'package:nft_app/pages/notification_page.dart';
import 'package:nft_app/pages/search_page.dart';
import 'package:nft_app/pages/uploud_page.dart';

final PageController pageController = PageController(initialPage: 0);

class MainPage extends StatefulWidget {
  static const routeName = "/";
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (page) {
          setState(() {
            currentIndex = page;
          });
        },
        children: const [
          HomePage(),
          SearchPage(),
          NotificationPage(),
          AccountPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: backgroundColor,
        elevation: 0,
        child: Stack(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 50.0,
                  sigmaY: 50.0,
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentIndex = 0;
                          });
                          pageController.animateToPage(
                            0,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        },
                        icon: SvgPicture.asset(
                          "assets/svg/bx-home-alt.svg",
                          color: currentIndex == 0 ? whiteText : textColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentIndex = 1;
                            pageController.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear,
                            );
                          });
                        },
                        icon: SvgPicture.asset(
                          "assets/svg/bx-search.svg",
                          color: currentIndex == 1 ? whiteText : textColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Uploudpage.routeName);
                        },
                        icon: const Icon(
                          Icons.add,
                          color: buttonColor,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentIndex = 2;
                            pageController.animateToPage(
                              2,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear,
                            );
                          });
                        },
                        icon: SvgPicture.asset(
                          "assets/svg/bx-bell.svg",
                          color: currentIndex == 2 ? whiteText : textColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentIndex = 3;
                            pageController.animateToPage(
                              3,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear,
                            );
                          });
                        },
                        icon: SvgPicture.asset(
                          "assets/svg/user-circle-regular.svg",
                          color: currentIndex == 3 ? whiteText : textColor,
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
