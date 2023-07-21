import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_task/components/card_with_btn.dart';
import 'package:flutter_task/components/card_with_icon.dart';
import 'package:flutter_task/components/outline_btn.dart';
import 'package:flutter_task/components/primary_card.dart';
import 'package:flutter_task/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: kBackgroundGrayColor,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/icons/Menu.png",
                        ),
                        width: 34,
                        height: 34,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/icons/Block.png"),
                            width: 34,
                            height: 34,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Image(
                            image: AssetImage("assets/icons/Notification.png"),
                            width: 34,
                            height: 34,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Hello, Priya!",
                    style: GoogleFonts.lora(
                        textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: kBlackColor,
                    )),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "What do you wanna learn today?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: kGrayColor,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GridView.count(
                    childAspectRatio: 4 / 1.1,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: const [
                      OutlineBtn(
                        borderRadius: 8.0,
                        title: "Programs",
                        iconImage: Image(
                          image: AssetImage("assets/icons/Book.png"),
                          width: 24,
                          height: 24,
                        ),
                      ),
                      OutlineBtn(
                        borderRadius: 8.0,
                        title: "Get Help",
                        iconImage: Image(
                          image: AssetImage("assets/icons/help-circle.png"),
                          width: 24,
                          height: 24,
                        ),
                      ),
                      OutlineBtn(
                        borderRadius: 8.0,
                        title: "Programs",
                        iconImage: Image(
                          image: AssetImage("assets/icons/Book.png"),
                          width: 24,
                          height: 24,
                        ),
                      ),
                      OutlineBtn(
                        borderRadius: 8.0,
                        title: "Programs",
                        iconImage: Image(
                          image: AssetImage("assets/icons/Book.png"),
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Programs for you",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: kBlackColor,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "View all",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: kGrayColor,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: kGrayColor,
                            size: 18,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PrimaryCard(
                        assetImageUrl: "assets/icons/frame.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        lessons: "12",
                      ),
                      PrimaryCard(
                        assetImageUrl: "assets/icons/frame.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        lessons: "12",
                      ),
                      PrimaryCard(
                        assetImageUrl: "assets/icons/frame.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        lessons: "12",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Events and experiences",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: kBlackColor),
                      ),
                      Row(
                        children: [
                          Text(
                            "View all",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: kGrayColor,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: kGrayColor,
                            size: 18,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardWithBtn(
                        assetImageUrl: "assets/icons/frame1.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        date: "21 July, Fr",
                        buttonTitle: "Book",
                      ),
                      CardWithBtn(
                        assetImageUrl: "assets/icons/frame1.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        date: "21 July, Fr",
                        buttonTitle: "Book",
                      ),
                      CardWithBtn(
                        assetImageUrl: "assets/icons/frame1.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        date: "21 July, Fr",
                        buttonTitle: "Book",
                      ),
                      CardWithBtn(
                        assetImageUrl: "assets/icons/frame1.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        date: "21 July, Fr",
                        buttonTitle: "Book",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lessons for you",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: kBlackColor,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "View all",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: kGrayColor,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: kGrayColor,
                            size: 18,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardWithIcon(
                        assetImageUrl: "assets/icons/frame1.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        time: "12 min",
                        icon: Icons.lock,
                      ),
                      CardWithIcon(
                        assetImageUrl: "assets/icons/frame1.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        time: "12 min",
                        icon: Icons.lock,
                      ),
                      CardWithIcon(
                        assetImageUrl: "assets/icons/frame1.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        time: "12 min",
                        icon: Icons.lock,
                      ),
                      CardWithIcon(
                        assetImageUrl: "assets/icons/frame1.png",
                        cardTitle: "LIFESTYLE",
                        cardDescription:
                            "A complete guide for your new born baby",
                        time: "12 min",
                        icon: Icons.lock,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
