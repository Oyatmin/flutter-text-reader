import 'package:flutter_text_reader/databases/text_db.dart';
import 'package:isar/isar.dart';

part 'group_db.g.dart';

@collection
class GroupDB {
  Id id = Isar.autoIncrement;
  late String name;
  late String backgroudColorHex;
  late String textColorHex;

  final texts = IsarLinks<TextDB>();
}
