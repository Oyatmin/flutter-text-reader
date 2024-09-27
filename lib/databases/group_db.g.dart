// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGroupDBCollection on Isar {
  IsarCollection<GroupDB> get groupDBs => this.collection();
}

const GroupDBSchema = CollectionSchema(
  name: r'GroupDB',
  id: 4033181636416885586,
  properties: {
    r'backgroudColorHex': PropertySchema(
      id: 0,
      name: r'backgroudColorHex',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'textColorHex': PropertySchema(
      id: 2,
      name: r'textColorHex',
      type: IsarType.string,
    )
  },
  estimateSize: _groupDBEstimateSize,
  serialize: _groupDBSerialize,
  deserialize: _groupDBDeserialize,
  deserializeProp: _groupDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'texts': LinkSchema(
      id: -705833747721034086,
      name: r'texts',
      target: r'TextDB',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _groupDBGetId,
  getLinks: _groupDBGetLinks,
  attach: _groupDBAttach,
  version: '3.1.0+1',
);

int _groupDBEstimateSize(
  GroupDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.backgroudColorHex.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.textColorHex.length * 3;
  return bytesCount;
}

void _groupDBSerialize(
  GroupDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backgroudColorHex);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.textColorHex);
}

GroupDB _groupDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GroupDB();
  object.backgroudColorHex = reader.readString(offsets[0]);
  object.id = id;
  object.name = reader.readString(offsets[1]);
  object.textColorHex = reader.readString(offsets[2]);
  return object;
}

P _groupDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _groupDBGetId(GroupDB object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _groupDBGetLinks(GroupDB object) {
  return [object.texts];
}

void _groupDBAttach(IsarCollection<dynamic> col, Id id, GroupDB object) {
  object.id = id;
  object.texts.attach(col, col.isar.collection<TextDB>(), r'texts', id);
}

extension GroupDBQueryWhereSort on QueryBuilder<GroupDB, GroupDB, QWhere> {
  QueryBuilder<GroupDB, GroupDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GroupDBQueryWhere on QueryBuilder<GroupDB, GroupDB, QWhereClause> {
  QueryBuilder<GroupDB, GroupDB, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GroupDBQueryFilter
    on QueryBuilder<GroupDB, GroupDB, QFilterCondition> {
  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroudColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backgroudColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backgroudColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backgroudColorHex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backgroudColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backgroudColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backgroudColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backgroudColorHex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroudColorHex',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      backgroudColorHexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backgroudColorHex',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textColorHexEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textColorHexGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textColorHexLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textColorHexBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textColorHex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textColorHexStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textColorHexEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textColorHexContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textColorHexMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textColorHex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textColorHexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textColorHex',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition>
      textColorHexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textColorHex',
        value: '',
      ));
    });
  }
}

extension GroupDBQueryObject
    on QueryBuilder<GroupDB, GroupDB, QFilterCondition> {}

extension GroupDBQueryLinks
    on QueryBuilder<GroupDB, GroupDB, QFilterCondition> {
  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> texts(
      FilterQuery<TextDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'texts');
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', length, true, length, true);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', 0, true, 0, true);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', 0, false, 999999, true);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', 0, true, length, include);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', length, include, 999999, true);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterFilterCondition> textsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'texts', lower, includeLower, upper, includeUpper);
    });
  }
}

extension GroupDBQuerySortBy on QueryBuilder<GroupDB, GroupDB, QSortBy> {
  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> sortByBackgroudColorHex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroudColorHex', Sort.asc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> sortByBackgroudColorHexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroudColorHex', Sort.desc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> sortByTextColorHex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textColorHex', Sort.asc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> sortByTextColorHexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textColorHex', Sort.desc);
    });
  }
}

extension GroupDBQuerySortThenBy
    on QueryBuilder<GroupDB, GroupDB, QSortThenBy> {
  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> thenByBackgroudColorHex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroudColorHex', Sort.asc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> thenByBackgroudColorHexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroudColorHex', Sort.desc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> thenByTextColorHex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textColorHex', Sort.asc);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QAfterSortBy> thenByTextColorHexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textColorHex', Sort.desc);
    });
  }
}

extension GroupDBQueryWhereDistinct
    on QueryBuilder<GroupDB, GroupDB, QDistinct> {
  QueryBuilder<GroupDB, GroupDB, QDistinct> distinctByBackgroudColorHex(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backgroudColorHex',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GroupDB, GroupDB, QDistinct> distinctByTextColorHex(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textColorHex', caseSensitive: caseSensitive);
    });
  }
}

extension GroupDBQueryProperty
    on QueryBuilder<GroupDB, GroupDB, QQueryProperty> {
  QueryBuilder<GroupDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GroupDB, String, QQueryOperations> backgroudColorHexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backgroudColorHex');
    });
  }

  QueryBuilder<GroupDB, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<GroupDB, String, QQueryOperations> textColorHexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textColorHex');
    });
  }
}
