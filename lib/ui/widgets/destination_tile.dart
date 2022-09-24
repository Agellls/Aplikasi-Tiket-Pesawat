import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  const DestinationTile(
      {super.key,
      required this.name,
      required this.city,
      required this.imageUrl,
      this.rating = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Expanded(
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
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
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
              fontWeight: medium,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
