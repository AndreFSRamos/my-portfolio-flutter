class SkillsModel {
  static List<SkillsModel> _list = [];

  String title;
  String pathImg;
  double percent;
  SkillsModel(
      {required this.title, required this.pathImg, required this.percent});

  static getList() {
    return _list;
  }

  static setList(List<SkillsModel> list) {
    _list = list;
  }
}
