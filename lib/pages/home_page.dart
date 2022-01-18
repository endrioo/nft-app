import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/common/colors.dart';
import 'package:nft_app/pages/trending_page.dart';
import 'package:nft_app/widget/trending_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        title: Row(
          children: [
            SvgPicture.asset(
              "assets/svg/bxs-leaf.svg",
              color: whiteText,
            ),
            const SizedBox(width: 10),
            const Text("NFTS")
          ],
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Trending",
                    style: TextStyle(
                      color: whiteText,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, TrendingPage.routeName);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: whiteText,
                      size: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView(
                shrinkWrap: true,
                primary: false,
                children: const [
                  TrendingCard(
                    images: "assets/images/trending_1.jpg",
                    name: "Overload",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TrendingCard(
                    images: "assets/images/trending_2.jpg",
                    name: "DarkSpace",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TrendingCard(
                    images: "assets/images/trending_3.jpg",
                    name: "SpaceGuard",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
