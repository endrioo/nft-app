import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/common/colors.dart';
import 'package:nft_app/widget/trending_card.dart';

class TrendingPage extends StatelessWidget {
  static const routeName = "/trending";
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Ink(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
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
        title: const Text("Trending"),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
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
            SizedBox(
              height: 25,
            ),
            TrendingCard(
              images: "assets/images/trending_4.jpg",
              name: "SpaceGirl",
            ),
            SizedBox(
              height: 25,
            ),
            TrendingCard(
              images: "assets/images/trending_5.jpg",
              name: "SpaceLife",
            ),
          ],
        ),
      ),
    );
  }
}
