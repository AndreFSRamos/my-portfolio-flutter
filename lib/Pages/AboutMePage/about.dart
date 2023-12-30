// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'dart:html';
import 'package:flutter/material.dart';
import '../../Controller/Controller_download_cv.dart';
import '../../Controller/controller_responsive.dart';
import '../../Core/core.dart';
import '../../Model/content_site.dart';
import '../../Model/dimensions_site.dart';
import '../../Widgets/custom_buttom.dart';
import '../../Widgets/custom_divider.dart';

class About extends StatelessWidget {
  const About({super.key, required this.index});
  final GlobalKey index;

  @override
  Widget build(BuildContext context) {
    _image() {
      return FittedBox(
        child: Container(
          height: 350,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
            color: AppColors.backgroundContainerPagesSecondWhite,
            image: const DecorationImage(
              image: AssetImage(
                "images/eu.png",
              ),
              fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
        ),
      );
    }

    _descriptionAbout() {
      return SelectableText(
        AppStrings.textAbout,
        style: TextStyle(
          fontSize: !Responsive.isDesktop(context)
              ? AppDimensions.h6
              : AppDimensions.h6,
          color: AppColors.labelColorBlacklight,
          fontFamily: AppStrings.robotoRegular,
          overflow: TextOverflow.ellipsis,
        ),
        maxLines: 20,
      );
    }

    _buttomDownloadCv() {
      return FittedBox(
        child: CustomButtom(
          function: () => ControllerDownloadCV.downloadFile(
              AppStrings.diretoryCv, AppStrings.nameFileCv),
          label: "Download CV",
          background: AppColors.primaryColor,
          colorLabel: AppColors.labelColorWhite,
          sizefont: AppDimensions.h6,
        ),
      );
    }

    _title() {
      return SelectableText(
        "Sobre",
        style: TextStyle(
          fontSize: Responsive.isMobile(context)
              ? AppDimensions.h4Mobile
              : AppDimensions.h4,
          color: AppColors.labelColorBlack,
          fontWeight: FontWeight.bold,
          fontFamily: AppStrings.robotoRegular,
          overflow: TextOverflow.ellipsis,
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
          height: Responsive.isMobile(context)
              ? AppDimensions.heightContainerPagesMobile
              : AppDimensions.heightContainerPages,
          child: Responsive.isMobile(context)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [_title()],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        CustomDivider(),
                      ],
                    ),
                    _image(),
                    _descriptionAbout(),
                    _buttomDownloadCv(),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _title(),
                    const SizedBox(height: 5),
                    const CustomDivider(),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 330,
                      child: Row(
                        children: [
                          Expanded(flex: 3, child: _image()),
                          const SizedBox(width: 20),
                          Expanded(
                            flex: 7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: 250, child: _descriptionAbout()),
                                _buttomDownloadCv(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
