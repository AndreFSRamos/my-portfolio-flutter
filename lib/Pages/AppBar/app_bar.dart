import 'package:flutter/material.dart';
import '../../Controller/controller_animations.dart';
import '../../Controller/controller_responsive.dart';
import '../../Core/core.dart';
import '../../Model/content_site.dart';
import '../../Model/dimensions_site.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key, required this.scrollPage});
  final Function scrollPage;
  static changeStatsIconMenu() {
    _animationControllerSideBar.reverse();
  }

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

late Animation _aniamtionSidebar;
late AnimationController _animationControllerSideBar;

class _MyAppBarState extends State<MyAppBar> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _animationControllerSideBar = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _aniamtionSidebar =
        IntTween(begin: 0, end: 260).animate(_animationControllerSideBar);
    _aniamtionSidebar.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    Widget caseText(String text) {
      return Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: AppColors.labelColorWhite,
          fontFamily: AppStrings.robotoBold,
        ),
      );
    }

    Widget tabBar() {
      return TabBar(
        tabs: [
          caseText('Home'),
          caseText('Sobre'),
          caseText('Formações'),
          caseText('Habilidades'),
          caseText('Projetos'),
        ],
        indicator: BoxDecoration(color: AppColors.primaryColor),
        padding: const EdgeInsets.all(0),
        onTap: (int index) {
          widget.scrollPage(index);
        },
      );
    }

    Widget iconMenu() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ValueListenableBuilder(
            valueListenable: ControllerAnimations.menuDesktop,
            builder: (context, bool menuDeskTopToMobile, _) => InkWell(
              hoverColor: Colors.white12,
              onTap: () {
                if (menuDeskTopToMobile) {
                  _animationControllerSideBar.reverse();
                } else {
                  _animationControllerSideBar.forward();
                }
                ControllerAnimations.setmenuDeskTop();
              },
              child: Ink(
                child: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  size: 28,
                  color: AppColors.labelColorWhite,
                  progress: _animationControllerSideBar,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget title() {
      return GestureDetector(
        onTap: () => widget.scrollPage(0),
        child: Text(
      "< / >",
      style: TextStyle(
        fontSize: Responsive.isMobile(context) ? AppDimensions.h6 : AppDimensions.h3,
        color: AppColors.primaryColor,
        fontFamily: AppStrings.montserratSemiBold,
        fontWeight: FontWeight.w900
      ),
    ),
      );
    }

    return SliverAppBar(
      floating: true,
      elevation: 0,
      leading: Responsive.isMobile(context)
          ? Padding(
              padding: const EdgeInsets.only(left: 16, top: 15),
              child: title(),
            )
          : null,
      actions: Responsive.isMobile(context)
          ? [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: iconMenu(),
              )
            ]
          : [],
      backgroundColor: AppColors.backgroundContainerHome,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(),
        centerTitle: true,
        title: Center(
                child: SizedBox(
                  width: AppDimensions.widthPageMax,
                  child: Responsive.isMobile(context)
                      ? null
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            title(),
                            const Expanded(child: SizedBox()),
                            Expanded(flex: 2, child: tabBar())
                          ],
                        ),
                ),
              ),
      ),
    );
  }
}
