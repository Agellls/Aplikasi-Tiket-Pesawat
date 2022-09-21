import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const CustomBottomNavigationItem(
      {super.key, required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 20,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
