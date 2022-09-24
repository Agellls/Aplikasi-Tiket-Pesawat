import 'package:flutter/material.dart';
import 'package:flutter_application_3/ui/pages/home_page.dart';
import 'package:flutter_application_3/ui/widgets/custom_bottom_navigation_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget BuildContext() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(
              bottom: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottomNavigationItem(
                  imageUrl: 'assets/icon_home.png',
                  isSelected: true,
                ),
                CustomBottomNavigationItem(imageUrl: 'assets/icon_booking.png'),
                CustomBottomNavigationItem(imageUrl: 'assets/icon_card.png'),
                CustomBottomNavigationItem(
                    imageUrl: 'assets/icon_settings.png'),
              ],
            ),
          ),
        ),
      );
    }

    Widget spaceBottom() {
      return Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kBackgroundColor,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          BuildContext(),
          spaceBottom(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
