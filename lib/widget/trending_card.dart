import 'package:flutter/material.dart';
import 'package:nft_app/common/colors.dart';
import 'package:nft_app/pages/detail_page.dart';

class TrendingCard extends StatelessWidget {
  final String images;
  final String name;
  const TrendingCard({Key? key, required this.images, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailPage.routeName,
          arguments: "assets/images/trending_4.jpg",
        );
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              images,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Container(
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            name,
                            style: const TextStyle(
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
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: whiteText,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            "Current bid",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "1.00 ETH",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
