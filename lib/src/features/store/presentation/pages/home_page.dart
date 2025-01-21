import 'package:flutter/material.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';
import 'package:rebuy/src/features/store/presentation/widgets/common/store_app_bar.dart';
import 'package:rebuy/src/features/store/presentation/widgets/home/home_header.dart';
import 'package:rebuy/src/features/store/presentation/widgets/home/item_viewer.dart';
import 'package:rebuy/src/features/store/presentation/widgets/home/search_text_filed.dart';
import 'package:rebuy/src/features/store/presentation/widgets/home/user_name.dart';
import 'package:rebuy/src/features/store/presentation/widgets/home/user_photo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const StoreAppBar(
            leading: UserPhoto(),
            title: UserName(),
            leftPadding: 21,
          ),
          verticalSpace(height: 30),
          const SearchTextFiled(),
          verticalSpace(height: 30),
          const HomeHeader(header: 'New arrivals'),
          verticalSpace(height: 20),
          const ItemViewer(),
          verticalSpace(height: 15),
          const HomeHeader(header: 'Recently viewed'),
          verticalSpace(height: 20),
          const ItemViewer(),
          verticalSpace(height: 70),
        ],
      ),
    );
  }
}
