class File{
  final bool isFolder;
  final String name;
  final int size;
  final String mimetype;
  final String kind;
  File({
    required this.name,
    required this.isFolder,
    required this.size,
    required this.mimetype,
    required this.kind,
  });

  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      name: json['name'],
      isFolder: json['isDir'],
      size: json['size'],
      mimetype: json['mimetype'],
      kind: json['kind'],
    );
  }
}