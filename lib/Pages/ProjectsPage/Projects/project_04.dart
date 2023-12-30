// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import '../../../Controller/controller_responsive.dart';
import '../../../Core/core.dart';
import '../../../Model/content_site.dart';
import '../../../Model/dimensions_site.dart';
import '../../../Widgets/custom_buttom.dart';
import 'dart:html' as html;

class Project04 extends StatelessWidget {
  const Project04({
    super.key,
    required this.imgPath,
    required this.title,
    required this.desc,
    required this.link,
    required this.background,
    required this.pos,
  });

  final String imgPath;
  final String title;
  final String desc;
  final String link;
  final Color background;
  final int pos;

  @override
  Widget build(BuildContext context) {
    _imgProject() => Image.asset(imgPath);

    _titleProject() {
      return SelectableText(
        title,
        style: TextStyle(
          fontSize: AppDimensions.h5,
          color: AppColors.labelColorBlacklight,
          fontFamily: AppStrings.robotoBold,
        ),
      );
    }

    _desProject() {
      return SelectableText(
        desc,
        style: TextStyle(
          fontSize: AppDimensions.h6,
          color: AppColors.labelColorBlacklight,
          fontFamily: AppStrings.robotoRegular,
          overflow: TextOverflow.ellipsis,
        ),
        maxLines: 10,
      );
    }

    _buttom(String link) {
      return CustomButtom(
        function: (() => html.window.open(link, "Projetos")),
        label: "saiba mais",
        background: AppColors.backgroundContainerHome,
        colorLabel: AppColors.labelColorWhite,
        sizefont: AppDimensions.h6,
      );
    }

    return Container(
      padding: !Responsive.isDesktop(context)
          ? AppDimensions.paddingMobileAndTable
          : AppDimensions.paddingDesktop,
      color: background,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: SizedBox(
          width: AppDimensions.widthPageMax,
          height: !Responsive.isMobile(context)
              ? AppDimensions.heightContainerPages
              : AppDimensions.heightContainerPagesMobile,
          child: !Responsive.isMobile(context)
              ? pos == 1
                  ? Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _titleProject(),
                              _desProject(),
                              _buttom(link),
                            ],
                          ),
                        ),
                        Expanded(flex: 4, child: _imgProject()),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(flex: 4, child: _imgProject()),
                        Expanded(
                          flex: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _titleProject(),
                              _desProject(),
                              _buttom(link),
                            ],
                          ),
                        ),
                      ],
                    )
              : Wrap(
                  runAlignment: WrapAlignment.center,
                  alignment: WrapAlignment.center,
                  runSpacing: 50,
                  children: [
                    FittedBox(child: _titleProject()),
                    _imgProject(),
                    _desProject(),
                    FittedBox(child: _buttom(link)),
                  ],
                ),
        ),
      ),
    );
  }
}
