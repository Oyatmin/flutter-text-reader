import 'package:flutter_text_reader/databases/text_db.dart';
import 'package:isar/isar.dart';

part 'tag_db.g.dart';

@collection
class TagDB {
  Id id = Isar.autoIncrement;
  late String tagName;
  bool? female;
  bool? male;
  bool favorite = false;

  Genre? genre;

  @Backlink(to: "tags")
  final texts = IsarLinks<TextDB>();
}

@embedded
class Genre {
  late String backgroudColorHex;
  late String textColorHex;
}
