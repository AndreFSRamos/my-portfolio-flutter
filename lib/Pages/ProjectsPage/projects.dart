import 'package:flutter/material.dart';
import '../../Controller/controller_responsive.dart';
import '../../Core/core.dart';
import '../../Model/content_site.dart';
import '../../Model/dimensions_site.dart';
import '../../Widgets/custom_divider.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key, required this.index});
  final GlobalKey index;

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  SelectableText(
                    "Projetos",
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
                ],
              ),
              const SizedBox(height: 5),
              const CustomDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
