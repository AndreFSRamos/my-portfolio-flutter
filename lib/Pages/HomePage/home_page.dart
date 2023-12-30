import 'package:flutter/material.dart';
import '../../Controller/controller_responsive.dart';
import '../../Core/core.dart';
import '../../Model/dimensions_site.dart';
import 'Widgets/hero.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.index,
    required this.scrollPage,
  });

  final GlobalKey index;
  final Function scrollPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.backgroundContainerHome,
      key: index,
      child: Center(
        child: Padding(
          padding: !Responsive.isDesktop(context)
              ? AppDimensions.paddingMobileAndTable
              : AppDimensions.paddingDesktop,
          child: SizedBox(
            width: AppDimensions.widthPageMax,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeHero(scrollPage: scrollPage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
