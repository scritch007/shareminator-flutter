class File{
  final bool isFolder;
  final String name;
  File({
    required this.name,
    required this.isFolder
  });

  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      name: json['name'],
      isFolder: json['isDir'],
    );
  }
}