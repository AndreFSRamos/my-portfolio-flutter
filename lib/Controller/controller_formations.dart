import '../Model/model_formations.dart';

class ControllerFormations {
  static initList() {
    List<FormationsModel> _list = [];
    FormationsModel graduacaoADS = FormationsModel(
      institution: "UniOpet",
      title: "Analise e Desenvolvimento de Sistemas",
      start: "02/2020",
      end: "08/2023",
      stats: "Completo",
      link: "assets/doc/Declaração Graduação ADS.pdf",
      hours: "0",
      type: 2,
      pathImg: "images/ads.png",
    );

    FormationsModel flutterMobile = FormationsModel(
      institution: "Startto.dev | Cursos Profissionais",
      title: "Criação de APPS Android/IOS/WEB com Flutter - 5 cursos em 1",
      start: "",
      end: "",
      stats: "Completo",
      link:
          "assets/doc/Certificado Desenvolvimento Mobile, IOS e WEB  com Flutterd.pdf",
      hours: "64 Horas",
      type: 1,
      pathImg: "images/flutter.jpg",
    );

    FormationsModel uiux = FormationsModel(
      institution: "Udemy",
      title: "UI & UX Design de aplicativos e sites - Adobe XD e PSD 2023",
      start: "01/2023",
      end: "02/2023",
      stats: "Completo",
      link: "assets/doc/ui_ux_designer.pdf",
      hours: "0",
      type: 1,
      pathImg: "images/ui_ux.jpg",
    );

    FormationsModel frontEnd = FormationsModel(
      institution: "Elaborata Informática",
      title: "Front-end com HTML, CSS Javascript e Bootstrap",
      start: "27/02/2023",
      end: "17/03/2023",
      stats: "Completo",
      link: "assets/doc/front-end.pdf",
      hours: "36H",
      type: 1,
      pathImg: "images/front-end.jpg",
    );

    FormationsModel backEnd = FormationsModel(
      institution: "Elaborata Informática",
      title: "Linguagem Java",
      start: "20/03/2023",
      end: "28/04/2023",
      stats: "Completo",
      link: "assets/doc/Certificado Java Bak-end.pdf",
      hours: "84H",
      type: 1,
      pathImg: "images/java_logo.png",
    );

    FormationsModel vue = FormationsModel(
      institution: "Cod3r Cursos Online",
      title: "Curso Vue JS 2 - O Guia Completo (incl. Vue Router & Vuex)",
      start: "03/04/2023",
      end: "01/05/2023",
      stats: "Completo",
      link: "assets/doc/Certificado Vue JS.pdf",
      hours: "43H",
      type: 1,
      pathImg: "images/vue_js_logo.png",
    );

    FormationsModel docker = FormationsModel(
      institution: "Cod3r Cursos Online",
      title: "Docker: Ferramenta essencial para Desenvolvedores",
      start: "02/07/2023",
      end: "02/07/2023",
      stats: "Completo",
      link: "assets/doc/docker_ferramenta essencial.pdf",
      hours: "5.5H",
      type: 1,
      pathImg: "images/logo-docker.png",
    );

    _list.add(graduacaoADS);
    _list.add(flutterMobile);
    _list.add(vue);
    _list.add(docker);
    _list.add(backEnd);
    _list.add(frontEnd);
    _list.add(uiux);
    
    FormationsModel.setList(_list);
  }

  static getlistFormation() {
    return FormationsModel.getList();
  }
}
