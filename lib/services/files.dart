import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:shareminator/models/file.dart';
import 'package:shareminator/models/folder.dart';

Future<Folder> browseFile(String path) async {
  final response = await http.post(Uri.parse("http://127.0.0.1:8000/commands"),
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
      body: jsonEncode(<String, dynamic>{
        'name': "browser.list",
        'browser': <String, dynamic>{
          'list': <String, dynamic>{
            'input': <String, dynamic>{
              'path': path,
              'show_hidden_files': false,
            }
          }
        }
      }));
  if (response.statusCode == 200) {
    Map<String, dynamic> jsonResponse = json.decode(response.body);
    return Folder.fromJson(jsonResponse['browser']['list']['output']);
  } else {
    throw Exception('Unexpected error occurred!');
  }
}
