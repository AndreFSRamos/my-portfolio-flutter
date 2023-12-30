class FormationsModel {
  static List<FormationsModel> _list = [];
  String institution;
  String title;
  String start;
  String end;
  String stats;
  String link;
  String hours;
  String pathImg;
  int type;

  FormationsModel({
    required this.institution,
    required this.title,
    required this.start,
    required this.end,
    required this.stats,
    required this.link,
    required this.hours,
    required this.type,
    required this.pathImg,
  });

  static getList() {
    return _list;
  }

  static setList(List<FormationsModel> list) {
    _list = list;
  }
}
