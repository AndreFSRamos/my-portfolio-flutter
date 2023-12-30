// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'dart:html';
import 'package:rive/rive.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../Controller/controller_responsive.dart';
import '../../Controller/controller_skills.dart';
import '../../Core/core.dart';
import '../../Model/content_site.dart';
import '../../Model/dimensions_site.dart';
import '../../Model/model_skills.dart';
import '../../Widgets/custom_clipper_skills.dart';
import '../../Widgets/custom_divider.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key, required this.index});
  final GlobalKey index;

  @override
  Widget build(BuildContext context) {
    List<SkillsModel> _list = ControllerSkills.getlistFormation();

    _tileSkill(SkillsModel item) {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundContainerPagesWhite,
            borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Stack(
            children: [
              ClipPath(
                clipper: ClipperSkills(),
                child: Container(
                  width: 304,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(AppDimensions.borderRadius),
                      topRight: Radius.circular(AppDimensions.borderRadius),
                    ),
                    gradient: AppColors.linearGradient,
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 2 / 2,
                child: CircularPercentIndicator(
                  backgroundColor:
                      AppColors.backgroundContainerPagesSecondWhite,
                  linearGradient: AppColors.linearGradient,
                  backgroundWidth: 12,
                  lineWidth: 12,
                  header: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(item.pathImg),
                        const SizedBox(width: 10),
                        Text(
                          item.title,
                          style: TextStyle(
                              fontSize: AppDimensions.h5,
                              fontFamily: AppStrings.robotoBold,
                              color: AppColors.labelColorBlacklight),
                        ),
                      ],
                    ),
                  ),
                  radius: 70,
                  center: Text(
                    "${item.percent * 100}%".toUpperCase(),
                    style: TextStyle(
                        fontSize: AppDimensions.h4,
                        fontFamily: AppStrings.robotoBold,
                        color: AppColors.labelColorBlacklight),
                  ),
                  percent: item.percent,
                  circularStrokeCap: CircularStrokeCap.round,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      padding: !Responsive.isDesktop(context)
          ? AppDimensions.paddingMobileAndTable
          : AppDimensions.paddingDesktop,
      key: index,
      color: AppColors.backgroundContainerPagesWhite,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: SizedBox(
          width: AppDimensions.widthPageMax,
          height: AppDimensions.heightContainerPages,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                "Habilidades",
                style: TextStyle(
                  fontSize: Responsive.isMobile(context)
                      ? AppDimensions.h4Mobile
                      : AppDimensions.h4,
                  color: AppColors.labelColorBlack,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppStrings.robotoRegular,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 5),
              const CustomDivider(),
              const SizedBox(height: 10),
              SizedBox(
                height: 320,
                width: AppDimensions.widthPageMax,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    },
                  ),
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: _list.map((SkillsModel item) {
                        return _tileSkill(item);
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
