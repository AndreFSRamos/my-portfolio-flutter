// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'dart:html';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../../../Controller/controller_responsive.dart';
import '../../../Core/core.dart';
import '../../../Model/content_site.dart';
import '../../../Model/dimensions_site.dart';
import '../../../Widgets/custom_buttom.dart';
import '../../../Widgets/custom_divider.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({super.key, required this.scrollPage});
  final Function scrollPage;

  _text(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: SelectableText(
            "Seja bem vindo, eu sou",
            style: TextStyle(
              fontSize: Responsive.isMobile(context)
                  ? AppDimensions.h6Mobile
                  : AppDimensions.h6,
              color: AppColors.labelColorWhite,
              fontFamily: AppStrings.montserratSemiBold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SelectableText(
          "ANDRÉ RAMOS",
          style: TextStyle(
            fontSize: Responsive.isMobile(context)
                ? AppDimensions.h1Mobile
                : AppDimensions.h1,
            color: AppColors.primaryColor,
            fontFamily: AppStrings.montserratBold,
          ),
        ),
        FittedBox(
          child: Row(
            children: [
              SelectableText(
                "Desenvolvedor Full Stack",
                style: TextStyle(
                  fontSize: Responsive.isMobile(context)
                      ? AppDimensions.h3Mobile
                      : AppDimensions.h3,
                  color: AppColors.labelColorWhite,
                  fontFamily: AppStrings.montserratSemiBold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const CustomDivider(),
        const SizedBox(height: 20),
        CustomButtom(
          function: () => scrollPage(5),
          label: "Contate-me",
          background: AppColors.primaryColor,
          colorLabel: AppColors.labelColorWhite,
          sizefont: AppDimensions.h6,
        )
      ],
    );
  }

  _image(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        height: 450,
        width: 450,
        child: Image.asset("images/eu24.png"),
      ),
    );
  }

  _iconScrollDown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(
          height: 25,
          width: 25,
          child:
              RiveAnimation.asset('movies/arrow_down.riv', fit: BoxFit.contain),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.heightContainerPageHome,
      child: !Responsive.isDesktop(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _image(context),
                _text(context),
                _iconScrollDown(),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: SizedBox()),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: _text(context),
                    ),
                    const Expanded(
                      flex: 2,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 4,
                      child: _image(context),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                const Expanded(child: SizedBox()),
                _iconScrollDown(),
                const Expanded(child: SizedBox()),
              ],
            ),
    );
  }
}
