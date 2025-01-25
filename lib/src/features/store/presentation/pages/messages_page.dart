import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';
import 'package:rebuy/src/features/store/presentation/widgets/common/search_text_filed.dart';
import 'package:rebuy/src/features/store/presentation/widgets/common/store_app_bar.dart';
import 'package:rebuy/src/features/store/presentation/widgets/messages/chats.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          const StoreAppBar(
            titleText: 'Messages',
            leftPadding: 10,
            rightPadding: 0,
          ),
          verticalSpace(height: 30),
          const SearchTextFiled(
            padding: 0,
          ),
          verticalSpace(height: 15),
          const Chats(),
          verticalSpace(height: 90),
        ],
      ),
    );
  }
}
