import 'package:flutter_text_reader/databases/tags_db.dart';
import 'package:isar/isar.dart';

part 'texts_db.g.dart';

@collection
class TextsDb {
  Id id = Isar.autoIncrement;
  late String title;
  late String filePath;
  DateTime? lastReadDate;
  int? lastReadPosition;
  String? group;
  String? series;
  String? author;
  int rate = 0;
  bool favorite = false;

  final tags = IsarLinks<TagsDb>();
  BookmarkDB? bookmarkDB;
}

class BookmarkDB {
  List<String>? bookmarkName;
  List<int>? position;
}
