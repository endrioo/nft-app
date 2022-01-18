import 'package:flutter/material.dart';
import 'package:nft_app/common/colors.dart';

class NewBidNotification extends StatelessWidget {
  final String profileImage;
  final String itemName;
  final String itemImage;
  const NewBidNotification({
    Key? key,
    required this.profileImage,
    required this.itemName,
    required this.itemImage,
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
                        text: "New bid  ",
                        style: const TextStyle(
                          color: textColor,
                          fontSize: 15,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "$itemName 0.01 ETH",
                            style: const TextStyle(
                              color: whiteText,
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
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              itemImage,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
