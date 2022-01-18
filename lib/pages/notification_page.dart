import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/common/colors.dart';
import 'package:nft_app/pages/main_page.dart';
import 'package:nft_app/widget/notification/follow_notification.dart';
import 'package:nft_app/widget/notification/newbid_notification.dart';
import 'package:nft_app/widget/notification/received_notification.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
        title: const Text("Notifications"),
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
          children: const [
            FollowNotfication(
              profileImage: "assets/images/profile_picture.jpg",
              name: "kidEight",
            ),
            ReceivedNotification(value: "0.001"),
            ReceivedNotification(value: "0.1"),
            NewBidNotification(
              profileImage: "assets/images/profile_picture4.jpg",
              itemName: "SpaceGirl",
              itemImage: "assets/images/trending_4.jpg",
            ),
            FollowNotfication(
              profileImage: "assets/images/profile_picture2.jpg",
              name: "RonDarknight",
            ),
            NewBidNotification(
              profileImage: "assets/images/profile_picture3.jpg",
              itemName: "SpaceLife",
              itemImage: "assets/images/trending_5.jpg",
            ),
            NewBidNotification(
              profileImage: "assets/images/profile_picture2.jpg",
              itemName: "SpaceLife",
              itemImage: "assets/images/trending_1.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
