import 'package:flutter_text_reader/databases/group_db.dart';
import 'package:flutter_text_reader/databases/tag_db.dart';
import 'package:isar/isar.dart';

part 'text_db.g.dart';

@collection
class TextDB {
  Id id = Isar.autoIncrement;
  late String title;
  late String filePath;
  DateTime? lastReadDate;
  int? lastReadPosition;
  String? group;
  String? series;
  String? author;
  String? imageURL;
  String? imagePath;
  int rate = 0;
  bool favorite = false;

  Bookmark? bookmark;

  final tags = IsarLinks<TagDB>();

  @Backlink(to: "texts")
  final groups = IsarLinks<GroupDB>();
}

@embedded
class Bookmark {
  List<String>? bookmarkName;
  List<int>? position;
}
