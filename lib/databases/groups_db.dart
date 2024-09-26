import 'package:flutter_text_reader/databases/texts_db.dart';
import 'package:isar/isar.dart';

part 'groups_db.g.dart';

@collection
class GroupsDB {
  Id id = Isar.autoIncrement;
  late String name;

  final texts = IsarLinks<TextsDB>();
}
