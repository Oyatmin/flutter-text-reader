import 'package:flutter_text_reader/databases/groups_db.dart';
import 'package:flutter_text_reader/databases/tags_db.dart';
import 'package:isar/isar.dart';

part 'texts_db.g.dart';

@collection
class TextsDB {
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

  BookmarkDB? bookmarkDB;

  final tags = IsarLinks<TagsDB>();

  @Backlink(to: "texts")
  final groups = IsarLinks<GroupsDB>();
}

class BookmarkDB {
  List<String>? bookmarkName;
  List<int>? position;
}
