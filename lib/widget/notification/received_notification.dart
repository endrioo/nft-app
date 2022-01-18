import 'package:flutter/material.dart';
import 'package:nft_app/common/colors.dart';

class ReceivedNotification extends StatelessWidget {
  final String value;

  const ReceivedNotification({
    Key? key,
    required this.value,
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
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(23),
                ),
                child: const Center(
                  child: Icon(
                    Icons.attach_money,
                    color: whiteText,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  SizedBox(
                    width: 160,
                    child: RichText(
                      text: TextSpan(
                        text: "Recieved $value ETH",
                        style: const TextStyle(
                          color: whiteText,
                          fontSize: 15,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: "  received",
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
              width: MediaQuery.of(context).size.width * 0.25,
              child: const Text(
                "My balance",
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
