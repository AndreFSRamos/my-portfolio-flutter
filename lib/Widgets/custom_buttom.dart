import 'package:flutter/material.dart';
import '../Core/core.dart';
import '../Model/content_site.dart';
import '../Model/dimensions_site.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.function,
    required this.label,
    required this.background,
    required this.colorLabel,
    required this.sizefont,
  });
  final Function() function;
  final String label;
  final Color background;
  final Color colorLabel;
  final double sizefont;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => function(),
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll<double>(10),
        overlayColor: const MaterialStatePropertyAll<Color>(Colors.white38),
        padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.all(sizefont == AppDimensions.labels ? 0 : 16),
        ),
        backgroundColor:
            MaterialStatePropertyAll<Color>(AppColors.primaryColor),
        shape: MaterialStatePropertyAll<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        ),

      ),
      child: Text(
        label,
        style: TextStyle(
          color: colorLabel,
          fontSize: sizefont,
          fontFamily: AppStrings.robotoBold,
        ),
      ),
    );
  }
}
