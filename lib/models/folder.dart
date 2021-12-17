import 'package:shareminator/models/file.dart';

class Folder {
  File current;
  List<File> elements;

  Folder({required this.current, required this.elements});

  factory Folder.fromJson(Map<String, dynamic> json) {
    dynamic map = json['children'].map<File>((data) => File.fromJson(data));

    List<File> elements = map.toList();

    return Folder(
      current: File.fromJson(json['current']),
      elements: elements,
    );
  }
}
