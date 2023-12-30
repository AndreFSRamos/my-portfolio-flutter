import '../Model/model_skills.dart';

class ControllerSkills {
  static init() {
    List<SkillsModel> _list = [];

    SkillsModel flutter = SkillsModel(
        title: "Flutter", pathImg: "images/flutter_logo.png", percent: 0.85);
    SkillsModel vue = SkillsModel(
        title: "Vue JS", pathImg: "images/vue_js.png", percent: 0.60);
    SkillsModel html =
        SkillsModel(title: "HTML", pathImg: "images/html.png", percent: 0.70);
    SkillsModel css =
        SkillsModel(title: "CSS", pathImg: "images/css-3.png", percent: 0.70);
    SkillsModel js = SkillsModel(
        title: "Java Script", pathImg: "images/js.png", percent: 0.70);
    SkillsModel java =
        SkillsModel(title: "Java", pathImg: "images/java.png", percent: 0.75);
    SkillsModel mysql =
        SkillsModel(title: "MySql", pathImg: "images/mysql.png", percent: 0.75);
    SkillsModel firebase = SkillsModel(
        title: "Firebase", pathImg: "images/firebase.png", percent: 0.60);
    SkillsModel figma =
        SkillsModel(title: "Figma", pathImg: "images/figma.png", percent: 0.60);
    SkillsModel xd =
        SkillsModel(title: "Adobe XD", pathImg: "images/xd.png", percent: 0.60);
    SkillsModel photoshop = SkillsModel(
        title: "Photoshop", pathImg: "images/photoshop.png", percent: 0.60);
    SkillsModel github64x64 = SkillsModel(
        title: "Github", pathImg: "images/github64x64.png", percent: 0.80);
    SkillsModel gitlab = SkillsModel(
        title: "Gitlab", pathImg: "images/gitlab.png", percent: 0.65);
    SkillsModel bootstrap = SkillsModel(
        title: "Bootstrap", pathImg: "images/bootstrap.png", percent: 0.60);
    SkillsModel docker = SkillsModel(
        title: "Docker", pathImg: "images/docker.png", percent: 0.50);
    SkillsModel springboot = SkillsModel(
        title: "Spring boot", pathImg: "images/spring-boot.png", percent: 0.65);

    _list.add(flutter);
    _list.add(java);
    _list.add(springboot);
    _list.add(vue);
    _list.add(docker);
    _list.add(html);
    _list.add(css);
    _list.add(js);
    _list.add(bootstrap);
    _list.add(mysql);
    _list.add(firebase);
    _list.add(github64x64);
    _list.add(gitlab);
    _list.add(figma);
    _list.add(xd);
    _list.add(photoshop);

    SkillsModel.setList(_list);
  }

  static getlistFormation() {
    return SkillsModel.getList();
  }
}
