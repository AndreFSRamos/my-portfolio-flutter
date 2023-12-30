// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import '../../Controller/Controller_download_cv.dart';
import '../../Controller/controller_formations.dart';
import '../../Controller/controller_responsive.dart';
import '../../Core/core.dart';
import '../../Model/content_site.dart';
import '../../Model/dimensions_site.dart';
import '../../Model/model_formations.dart';
import '../../Widgets/custom_buttom.dart';
import '../../Widgets/custom_divider.dart';

class FormatiosPage extends StatelessWidget {
  const FormatiosPage({super.key, required this.index});
  final GlobalKey index;

  @override
  Widget build(BuildContext context) {
    List<FormationsModel> _list = ControllerFormations.getlistFormation();

    _tileItens(FormationsModel item) {
      return AspectRatio(
        aspectRatio: 2.3 / 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex: 8, child: Image.asset(item.pathImg)),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundContainerPagesSecondWhite,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(AppDimensions.borderRadius),
                        bottomRight:
                            Radius.circular(AppDimensions.borderRadius),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 7,
                          child: SelectableText(
                            item.title,
                            style: TextStyle(
                              fontSize: AppDimensions.labels,
                              fontFamily: AppStrings.robotoBold,
                              overflow: TextOverflow.ellipsis,
                              color: AppColors.labelColorBlacklight,
                            ),
                            maxLines: 3,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: CustomButtom(
                            function: () => ControllerDownloadCV.downloadFile(
                                item.link, item.title),
                            label: "saiba mais",
                            background: AppColors.primaryColor,
                            colorLabel: AppColors.labelColorWhite,
                            sizefont: AppDimensions.labels,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      padding: !Responsive.isDesktop(context)
          ? AppDimensions.paddingMobileAndTable
          : AppDimensions.paddingDesktop,
      key: index,
      color: AppColors.backgroundContainerPagesSecondWhite,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: SizedBox(
          width: AppDimensions.widthPageMax,
          height: AppDimensions.heightContainerPages,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: SelectableText(
                  "Formações",
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
                    scrollDirection: Axis.horizontal,
                    controller: ScrollController(),
                    child: Row(
                      children: _list.map(
                        (FormationsModel item) {
                          return _tileItens(item);
                        },
                      ).toList(),
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
