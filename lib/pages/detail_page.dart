import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_app/common/colors.dart';

class DetailPage extends StatelessWidget {
  static const routeName = "/detailPage";
  final String images;

  const DetailPage({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Ink(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(
                  "assets/svg/times-solid.svg",
                  color: whiteText,
                ),
              ),
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "SpaceGirl",
                      style: TextStyle(
                        color: whiteText,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 10,
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
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      images,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.black,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.fullscreen,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.download,
                              size: 18,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text("27", style: TextStyle(color: whiteText))
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "Ending in",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "8h 41m 2s",
                                      style: TextStyle(
                                        color: whiteText,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "Highest bid",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "4.10 ETH",
                                      style: TextStyle(
                                        color: whiteText,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  print("purchase");
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: whiteText),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Purchase",
                                    style: TextStyle(color: whiteText),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  print("Place a bid");
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: buttonColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Place a bid",
                                    style: TextStyle(color: whiteText),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
