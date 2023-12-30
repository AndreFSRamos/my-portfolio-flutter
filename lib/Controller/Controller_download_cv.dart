import 'dart:html' as html;

class ControllerDownloadCV {
  static downloadFile(String directory, String nameFile) {
    html.AnchorElement anchorElement = html.AnchorElement(href: directory);
    anchorElement.download = nameFile;
    anchorElement.click();
  }
}
