import 'package:flutter_text_reader/databases/texts_db.dart';
import 'package:isar/isar.dart';

part 'tags_db.g.dart';

@collection
class TagsDb {
  Id id = Isar.autoIncrement;
  late String tagName;
  bool? female;
  bool? male;
  bool? genre;
  bool favorite = false;

  @Backlink(to: "tags")
  final textsDbs = IsarLinks<TextsDb>();
}
