import 'package:flutter/material.dart';
import 'package:nft_app/common/colors.dart';

class FollowNotfication extends StatelessWidget {
  final String profileImage;
  final String name;
  const FollowNotfication({
    Key? key,
    required this.profileImage,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: buttonColor,
                  border: Border.all(
                    color: buttonColor,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(23),
                child: Image.asset(
                  profileImage,
                  width: 46,
                  height: 46,
                ),
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  SizedBox(
                    width: 160,
                    child: RichText(
                      text: TextSpan(
                        text: name,
                        style: const TextStyle(
                          color: whiteText,
                          fontSize: 15,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: "  followed you",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 160,
                    child: Text(
                      "9 jul 2021, 11:34 PM",
                      style: TextStyle(color: textColor, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: whiteText),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 0.20,
              child: const Text(
                "Follow",
                style: TextStyle(color: whiteText, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
