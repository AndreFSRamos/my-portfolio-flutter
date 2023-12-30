import 'package:andrefsramos/Model/content_site.dart';
import 'package:andrefsramos/Pages/AppBar/app_bar.dart';
import 'package:andrefsramos/Pages/ProjectsPage/Projects/project_04.dart';
import 'package:andrefsramos/Pages/Sidebar/sidebar.dart';
import 'package:flutter/material.dart';
import '../Controller/controller_animations.dart';
import '../Controller/controller_formations.dart';
import '../Controller/controller_skills.dart';
import '../Core/core.dart';
import '../Model/dimensions_site.dart';
import 'AboutMePage/about.dart';
import 'FooterPage/footer.dart';
import 'FormationsPage/formations.dart';
import 'HomePage/Widgets/menu.dart';
import 'HomePage/home_page.dart';
import 'ProjectsPage/projects.dart';
import 'SkillsPage/skills.dart';

class ScrollPages extends StatefulWidget {
  const ScrollPages({super.key});

  @override
  State<ScrollPages> createState() => _ScrollPagesState();
}

class _ScrollPagesState extends State<ScrollPages> {
  late ScrollController _scrollController;
  BuildContext? tabContext;
  final List<GlobalKey> pages = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  @override
  void initState() {
    super.initState();
    ControllerSkills.init();
    ControllerFormations.initList();
    _scrollController = ScrollController();
    _scrollController.addListener(_changeTabs);
  }

  _changeTabs() {
    setState(() {
      late RenderBox box;
      for (var i = 0; i < pages.length; i++) {
        box = pages[i].currentContext!.findRenderObject() as RenderBox;

        Offset position = box.localToGlobal(Offset.zero);

        if (_scrollController.offset / 3.5 > position.dy) {
          DefaultTabController.of(tabContext!)!.animateTo(i,
              duration: const Duration(milliseconds: 100), curve: Curves.ease);
        }
      }
    });
  }

  _scrollContextPage(int index) async {
    _scrollController.removeListener(_changeTabs);
    final page = pages[index].currentContext!;
    await Scrollable.ensureVisible(page,
        duration: const Duration(milliseconds: 100), curve: Curves.ease);
    _scrollController.addListener(_changeTabs);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Builder(builder: (context) {
        tabContext = context;
        return Body(
          scrollController: _scrollController,
          pages: pages,
          scrollPages: _scrollContextPage,
        );
      }),
    );
  }
}

class Body extends StatelessWidget {
  const Body(
      {super.key,
      required this.pages,
      required this.scrollController,
      required this.scrollPages});
  final ScrollController scrollController;
  final List<GlobalKey> pages;
  final Function scrollPages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  MyAppBar(scrollPage: scrollPages),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        HomePage(
                          index: pages[0],
                          scrollPage: scrollPages,
                        ),
                        About(index: pages[1]),
                        FormatiosPage(index: pages[2]),
                        SkillsPage(index: pages[3]),
                        ProjectsPage(index: pages[4]),
                        Project04(
                          title: "Portifólio Pessoal Versão 1.0",
                          imgPath: "images/project1.png",
                          desc: AppStrings.project1,
                          link: "",
                          background:
                              AppColors.backgroundContainerPagesSecondWhite,
                          pos: 2,
                        ),
                        Project04(
                          title: "Aplicativo Flutter de Loja Virtual",
                          imgPath: "images/project2.png",
                          desc: AppStrings.project2,
                          link:
                              "https://github.com/AndreFSRamos/Flutter_Loja_virtual",
                          background: AppColors.backgroundContainerPagesWhite,
                          pos: 1,
                        ),
                        Project04(
                          title: "Aplicativo Flutter para buscar de Gifs",
                          imgPath: "images/project3.png",
                          desc: AppStrings.project3,
                          link:
                              "https://github.com/AndreFSRamos/Flutter_Buscador_GIFs",
                          background:
                              AppColors.backgroundContainerPagesSecondWhite,
                          pos: 2,
                        ),
                        Project04(
                          title: "Sistema Desktop Flutter - Smart Escriba",
                          imgPath: "images/project4.png",
                          desc: AppStrings.project4,
                          link: "",
                          background: AppColors.backgroundContainerPagesWhite,
                          pos: 1,
                        ),
                        FooterPage(index: pages[5]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: ControllerAnimations.menuDesktop,
            builder: (context, bool menuDeskTopToMobile, _) =>
                menuDeskTopToMobile
                    ? SideBar(scrollPage: scrollPages)
                    : Container(),
          )
        ],
      ),
    );
  }
}
