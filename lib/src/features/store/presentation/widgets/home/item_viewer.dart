import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/features/store/presentation/widgets/home/home_item.dart';

class ItemViewer extends StatelessWidget {
  const ItemViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 259.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (itemBuilder, index) => index == 2
            ? Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: const HomeItem(),
              )
            : const HomeItem(),
        itemCount: 3,
      ),
    );
  }
}
