import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/common/colors.dart';
import 'package:nft_app/pages/detail_page.dart';
import 'package:nft_app/pages/main_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: backgroundColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text("Discover"),
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Ink(
            child: IconButton(
              onPressed: () {
                pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear,
                );
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: whiteText,
                size: 14,
              ),
            ),
            decoration: const ShapeDecoration(
              shape: CircleBorder(),
              color: primaryColor,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/svg/grip-lines-solid.svg",
                color: whiteText,
                width: 25,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 25,
                right: 5,
                top: 2,
                bottom: 2,
              ),
              margin: const EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: textColor),
              ),
              child: TextField(
                controller: _controller,
                cursorColor: whiteText,
                style: const TextStyle(
                  color: whiteText,
                  decoration: TextDecoration.none,
                ),
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(
                      "assets/svg/bx-search.svg",
                      color: textColor,
                    ),
                    onPressed: () {},
                  ),
                  hintText: "Search",
                  hintStyle: const TextStyle(
                    color: textColor,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  DetailPage.routeName,
                  arguments: "assets/images/trending_4.jpg",
                );
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/trending_4.jpg",
                      fit: BoxFit.cover,
                      height: 350,
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 15,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteText,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      child: const Text(
                        "08h 40m 14s",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    child: Positioned(
                      bottom: 15,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Space Guard",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: whiteText,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundImage: AssetImage(
                                          "assets/images/profile_picture.jpg",
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "jailyn crona",
                                        style: TextStyle(
                                          color: whiteText,
                                          fontSize: 11,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    "4.10 ETH",
                                    style: TextStyle(
                                      color: whiteText,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    "\$8,625.61",
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            GridView.count(
              childAspectRatio: 2 / 2,
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 2,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10, bottom: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/trending_1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, bottom: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/trending_2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10, top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/trending_3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/trending_5.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
