import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/features/store/presentation/pages/home_page.dart';
import 'package:rebuy/src/features/store/presentation/widgets/common/bottom_navigation_bar.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

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
        child: PageView(
          children: const [
            HomePage(),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
