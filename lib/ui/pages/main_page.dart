import 'package:flutter/material.dart';
import 'package:flutter_application_3/ui/pages/home_page.dart';
import 'package:flutter_application_3/ui/pages/setting_page.dart';
import 'package:flutter_application_3/ui/pages/transaction_page.dart';
import 'package:flutter_application_3/ui/pages/wallet_page.dart';
import 'package:flutter_application_3/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/page_cubit.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget BuildContext(int CurrentIndex) {
      switch (CurrentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
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
                  index: 0,
                  imageUrl: 'assets/icon_home.png',
                ),
                CustomBottomNavigationItem(
                  index: 1,
                  imageUrl: 'assets/icon_booking.png',
                ),
                CustomBottomNavigationItem(
                  index: 2,
                  imageUrl: 'assets/icon_card.png',
                ),
                CustomBottomNavigationItem(
                  index: 3,
                  imageUrl: 'assets/icon_settings.png',
                ),
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

    return BlocBuilder<PageCubit, int>(
      builder: (context, CurrentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              BuildContext(CurrentIndex),
              spaceBottom(),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
