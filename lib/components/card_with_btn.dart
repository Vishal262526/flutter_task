import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_task/components/outline_btn.dart';
import 'package:flutter_task/constants/colors.dart';

class CardWithBtn extends StatelessWidget {
  const CardWithBtn({
    super.key,
    required this.assetImageUrl,
    required this.cardTitle,
    required this.cardDescription,
    required this.date,
    required this.buttonTitle,
  });

  final String assetImageUrl;
  final String cardTitle;
  final String cardDescription;
  final String date;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      width: 242,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)),
              image: DecorationImage(
                image: AssetImage(
                  assetImageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardTitle,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  cardDescription,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: kBlackColor,
                    height: 1.1,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$date lessons",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: kGrayColor,
                      ),
                    ),
                    OutlineBtn(title: buttonTitle)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
