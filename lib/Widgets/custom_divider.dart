import 'package:flutter/material.dart';
import '../Core/core.dart';
import '../Model/dimensions_site.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
        color: AppColors.primaryColor,
      ),
    );
  }
}
