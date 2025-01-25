import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';
import 'package:rebuy/src/features/store/presentation/widgets/common/store_app_bar.dart';
import 'package:rebuy/src/features/store/presentation/widgets/favorite/favorite_items.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          const StoreAppBar(
            titleText: 'Liked items',
            leftPadding: 10,
            rightPadding: 0,
          ),
          verticalSpace(height: 30),
          const FavoriteItems(),
          verticalSpace(height: 90),
        ],
      ),
    );
  }
}
