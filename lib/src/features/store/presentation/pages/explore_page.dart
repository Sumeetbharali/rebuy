import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';
import 'package:rebuy/src/features/store/presentation/widgets/common/store_app_bar.dart';
import 'package:rebuy/src/features/store/presentation/widgets/common/search_text_filed.dart';
import 'package:rebuy/src/features/store/presentation/widgets/explore/category_list.dart';
import 'package:rebuy/src/features/store/presentation/widgets/explore/products_posts.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(right: 25.w, left: 18.w),
        child: Column(
          children: [
            const StoreAppBar(
              titleText: 'Explore',
              leftPadding: 10,
              rightPadding: 0,
            ),
            verticalSpace(height: 30),
            const SearchTextFiled(
              padding: 0,
            ),
            verticalSpace(height: 15),
            CategoryList(),
            verticalSpace(height: 15),
            const ProductsPosts(),
          ],
        ),
      ),
    );
  }
}
