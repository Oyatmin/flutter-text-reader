import 'package:flutter_text_reader/databases/text_db.dart';
import 'package:isar/isar.dart';

part 'tag_db.g.dart';

@collection
class TagDB {
  Id id = Isar.autoIncrement;
  late String tagName;
  bool? female;
  bool? male;
  bool? genre;
  bool favorite = false;

  @Backlink(to: "tags")
  final texts = IsarLinks<TextDB>();
}
