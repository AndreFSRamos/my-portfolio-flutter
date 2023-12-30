import 'package:flutter/material.dart';
import '../../../Controller/controller_animations.dart';
import '../../../Controller/controller_responsive.dart';
import '../../../Core/core.dart';
import '../../../Model/content_site.dart';
import '../../../Model/dimensions_site.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key, required this.scrollPage});
  final Function scrollPage;
  static changeStatsIconMenu() {
    _animationControllerSideBar.reverse();
  }

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

late Animation _aniamtionSidebar;
late AnimationController _animationControllerSideBar;

class _MenuPrincipalState extends State<MenuPrincipal>
    with TickerProviderStateMixin {
  _caseText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: AppColors.labelColorWhite,
        fontFamily: AppStrings.robotoBold,
      ),
    );
  }

  _tabBar() {
    return TabBar(
      tabs: [
        _caseText('Home'),
        _caseText('Sobre'),
        _caseText('Formações'),
        _caseText('Habilidades'),
        _caseText('Projetos'),
      ],
      indicatorColor: AppColors.primaryColor,
      splashBorderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      onTap: (int index) {
        widget.scrollPage(index);
      },
    );
  }

  _iconMenu() {
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

  _title() {
    return GestureDetector(
      onTap: () => widget.scrollPage(0),
      child: SizedBox(
        height: 70,
        child: Image.asset(
          "images/logo.png",
          fit: BoxFit.contain,
        ),
      ),
    );
  }

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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      height: AppDimensions.heightHeader,
      width: MediaQuery.of(context).size.width,
      color: AppColors.backgroundContainerHome,
      child: Center(
        child: SizedBox(
          width: AppDimensions.widthPageMax,
          child: Responsive.isMobile(context)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _title(),
                    Expanded(child: Container()),
                    _iconMenu(),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _title(),
                    const Expanded(child: SizedBox()),
                    Expanded(flex: 2, child: _tabBar())
                  ],
                ),
        ),
      ),
    );
  }
}
