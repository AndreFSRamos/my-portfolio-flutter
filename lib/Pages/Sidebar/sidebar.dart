import 'package:andrefsramos/Model/content_site.dart';
import 'package:andrefsramos/Model/dimensions_site.dart';
import 'package:andrefsramos/Pages/HomePage/Widgets/menu.dart';
import 'package:flutter/material.dart';
import '../../Controller/controller_animations.dart';
import '../../Core/core.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key, required this.scrollPage});

  final Function scrollPage;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final double xOffSet = 0.0;

  final double yOffSet = 0.0;

  static int isSelect = -1;

  @override
  Widget build(BuildContext context) {
    List items = [
      "Home",
      "Sobre",
      "Formações",
      "Habilidades",
      "Projetos",
      "Contato",
    ];

    List icons = [
      "images/home.png",
      "images/person.png",
      "images/premium.png",
      "images/pencil.png",
      "images/programming.png",
      "images/correspondencia.png",
    ];
    return ValueListenableBuilder(
      valueListenable: ControllerAnimations.menuDesktop,
      builder: (context, bool menuDeskTopToMobile, _) => AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.translationValues(xOffSet, yOffSet, 1.0),
        color: AppColors.backgroundContainerPagesSecondWhite,
        width: menuDeskTopToMobile
            ? MediaQuery.of(context).size.width * 0.8
            : yOffSet,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: items.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () async{
                    
                    setState(() {
                      isSelect = index;
                    });

                    widget.scrollPage(index);
                    ControllerAnimations.setmenuDeskTop();
                   await MenuPrincipal.changeStatsIconMenu();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color:
                            isSelect == index ? AppColors.primaryColor: null,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              icons[index],
                              color: isSelect == index ? Colors.white : null,
                            ),
                          ),
                          const Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                            flex: 10,
                            child: Text(
                              items[index],
                              style: TextStyle(
                                fontFamily: AppStrings.robotoMedium,
                                fontSize: AppDimensions.h6,
                                color: isSelect == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
