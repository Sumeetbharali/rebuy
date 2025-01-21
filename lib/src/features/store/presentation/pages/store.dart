import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/features/store/presentation/pages/Favorite_page.dart';
import 'package:rebuy/src/features/store/presentation/pages/explore_page.dart';
import 'package:rebuy/src/features/store/presentation/pages/home_page.dart';
import 'package:rebuy/src/features/store/presentation/pages/messages_page.dart';
import 'package:rebuy/src/features/store/presentation/widgets/common/bottom_navigation_bar.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  final PageController _pageController = PageController();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.lightestGray,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            PageView(
              controller: _pageController,
              children: const [
                HomePage(),
                ExplorePage(),
                FavoritePage(),
                MessagesPage(),
              ],
              onPageChanged: (value) => {
                setState(() {
                  selectedIndex = value > 1 ? value + 1 : value;
                })
              },
            ),
            AppBottomNavigationBar(
              selectedIndex: selectedIndex,
              onIndexChanged: (int index) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                setState(() {
                  selectedIndex = index > 1 ? index + 1 : index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
