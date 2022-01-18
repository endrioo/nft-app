import 'package:flutter/material.dart';
import 'package:nft_app/common/colors.dart';

class Uploudpage extends StatelessWidget {
  static const routeName = "/uploud";
  const Uploudpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
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
        title: const Text("New Collection"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: buttonColor,
                onPrimary: whiteText,
              ),
              child: const Text(
                "Done",
                style: TextStyle(fontSize: 11),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Upload File",
                style: TextStyle(
                  color: whiteText,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "choose your file to uploud",
                style: TextStyle(
                  color: textColor,
                  fontSize: 13,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.upload_file,
                        size: 35,
                        color: buttonColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "PNG,GIF,WEBP,MP4 or \n MP3, YGB",
                        style: TextStyle(color: textColor, fontSize: 11),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: whiteText,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/trending_1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/trending_2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/trending_3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/trending_5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
