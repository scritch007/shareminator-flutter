import 'package:flutter/material.dart';
import 'package:shareminator/models/file.dart';

class FileWidget extends StatelessWidget {
  const FileWidget({required this.file, Key? key}) : super(key: key);

  final File file;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        width: 130,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
            left: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
            right: BorderSide(width: 1.0, color: Color(0xFF000000)),
            bottom: BorderSide(width: 1.0, color: Color(0xFF000000)),
          ),
          color: Colors.white,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            file.isFolder?const Icon(
              Icons.folder_open,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ):const Icon(
              Icons.file_download,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Text(file.name),
          ],
        ));
  }
}
