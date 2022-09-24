import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  const DestinationCard(
      {super.key,
      required this.name,
      required this.city,
      required this.imageUrl,
      this.rating = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            height: 323,
            width: 200,
            margin: EdgeInsets.only(left: defaultMargin),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 220,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kWhiteColor,
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 55,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 2),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'),
                              ),
                            ),
                          ),
                          Text(
                            rating.toString(),
                            style: blackTextStyle.copyWith(
                                fontWeight: medium, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        city,
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
