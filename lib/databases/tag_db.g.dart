// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTagDBCollection on Isar {
  IsarCollection<TagDB> get tagDBs => this.collection();
}

const TagDBSchema = CollectionSchema(
  name: r'TagDB',
  id: 6304973768893934750,
  properties: {
    r'favorite': PropertySchema(
      id: 0,
      name: r'favorite',
      type: IsarType.bool,
    ),
    r'female': PropertySchema(
      id: 1,
      name: r'female',
      type: IsarType.bool,
    ),
    r'genre': PropertySchema(
      id: 2,
      name: r'genre',
      type: IsarType.object,
      target: r'Genre',
    ),
    r'male': PropertySchema(
      id: 3,
      name: r'male',
      type: IsarType.bool,
    ),
    r'tagName': PropertySchema(
      id: 4,
      name: r'tagName',
      type: IsarType.string,
    )
  },
  estimateSize: _tagDBEstimateSize,
  serialize: _tagDBSerialize,
  deserialize: _tagDBDeserialize,
  deserializeProp: _tagDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'texts': LinkSchema(
      id: 630142110463225275,
      name: r'texts',
      target: r'TextDB',
      single: false,
      linkName: r'tags',
    )
  },
  embeddedSchemas: {r'Genre': GenreSchema},
  getId: _tagDBGetId,
  getLinks: _tagDBGetLinks,
  attach: _tagDBAttach,
  version: '3.1.0+1',
);

int _tagDBEstimateSize(
  TagDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.genre;
    if (value != null) {
      bytesCount +=
          3 + GenreSchema.estimateSize(value, allOffsets[Genre]!, allOffsets);
    }
  }
  bytesCount += 3 + object.tagName.length * 3;
  return bytesCount;
}

void _tagDBSerialize(
  TagDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.favorite);
  writer.writeBool(offsets[1], object.female);
  writer.writeObject<Genre>(
    offsets[2],
    allOffsets,
    GenreSchema.serialize,
    object.genre,
  );
  writer.writeBool(offsets[3], object.male);
  writer.writeString(offsets[4], object.tagName);
}

TagDB _tagDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TagDB();
  object.favorite = reader.readBool(offsets[0]);
  object.female = reader.readBoolOrNull(offsets[1]);
  object.genre = reader.readObjectOrNull<Genre>(
    offsets[2],
    GenreSchema.deserialize,
    allOffsets,
  );
  object.id = id;
  object.male = reader.readBoolOrNull(offsets[3]);
  object.tagName = reader.readString(offsets[4]);
  return object;
}

P _tagDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<Genre>(
        offset,
        GenreSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tagDBGetId(TagDB object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tagDBGetLinks(TagDB object) {
  return [object.texts];
}

void _tagDBAttach(IsarCollection<dynamic> col, Id id, TagDB object) {
  object.id = id;
  object.texts.attach(col, col.isar.collection<TextDB>(), r'texts', id);
}

extension TagDBQueryWhereSort on QueryBuilder<TagDB, TagDB, QWhere> {
  QueryBuilder<TagDB, TagDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TagDBQueryWhere on QueryBuilder<TagDB, TagDB, QWhereClause> {
  QueryBuilder<TagDB, TagDB, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TagDB, TagDB, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterWhereClause> idBetween(
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

extension TagDBQueryFilter on QueryBuilder<TagDB, TagDB, QFilterCondition> {
  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> favoriteEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'favorite',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> femaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'female',
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> femaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'female',
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> femaleEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'female',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> genreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'genre',
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> genreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'genre',
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> maleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'male',
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> maleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'male',
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> maleEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'male',
        value: value,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tagName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tagName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tagName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagName',
        value: '',
      ));
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> tagNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tagName',
        value: '',
      ));
    });
  }
}

extension TagDBQueryObject on QueryBuilder<TagDB, TagDB, QFilterCondition> {
  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> genre(
      FilterQuery<Genre> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'genre');
    });
  }
}

extension TagDBQueryLinks on QueryBuilder<TagDB, TagDB, QFilterCondition> {
  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> texts(
      FilterQuery<TextDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'texts');
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> textsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', length, true, length, true);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> textsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', 0, true, 0, true);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> textsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', 0, false, 999999, true);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> textsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', 0, true, length, include);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> textsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'texts', length, include, 999999, true);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterFilterCondition> textsLengthBetween(
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

extension TagDBQuerySortBy on QueryBuilder<TagDB, TagDB, QSortBy> {
  QueryBuilder<TagDB, TagDB, QAfterSortBy> sortByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> sortByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> sortByFemale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'female', Sort.asc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> sortByFemaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'female', Sort.desc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> sortByMale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'male', Sort.asc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> sortByMaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'male', Sort.desc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> sortByTagName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagName', Sort.asc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> sortByTagNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagName', Sort.desc);
    });
  }
}

extension TagDBQuerySortThenBy on QueryBuilder<TagDB, TagDB, QSortThenBy> {
  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenByFemale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'female', Sort.asc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenByFemaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'female', Sort.desc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenByMale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'male', Sort.asc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenByMaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'male', Sort.desc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenByTagName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagName', Sort.asc);
    });
  }

  QueryBuilder<TagDB, TagDB, QAfterSortBy> thenByTagNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tagName', Sort.desc);
    });
  }
}

extension TagDBQueryWhereDistinct on QueryBuilder<TagDB, TagDB, QDistinct> {
  QueryBuilder<TagDB, TagDB, QDistinct> distinctByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'favorite');
    });
  }

  QueryBuilder<TagDB, TagDB, QDistinct> distinctByFemale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'female');
    });
  }

  QueryBuilder<TagDB, TagDB, QDistinct> distinctByMale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'male');
    });
  }

  QueryBuilder<TagDB, TagDB, QDistinct> distinctByTagName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tagName', caseSensitive: caseSensitive);
    });
  }
}

extension TagDBQueryProperty on QueryBuilder<TagDB, TagDB, QQueryProperty> {
  QueryBuilder<TagDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TagDB, bool, QQueryOperations> favoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'favorite');
    });
  }

  QueryBuilder<TagDB, bool?, QQueryOperations> femaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'female');
    });
  }

  QueryBuilder<TagDB, Genre?, QQueryOperations> genreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genre');
    });
  }

  QueryBuilder<TagDB, bool?, QQueryOperations> maleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'male');
    });
  }

  QueryBuilder<TagDB, String, QQueryOperations> tagNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tagName');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenreSchema = Schema(
  name: r'Genre',
  id: -453881181692258612,
  properties: {
    r'backgroudColorHex': PropertySchema(
      id: 0,
      name: r'backgroudColorHex',
      type: IsarType.string,
    ),
    r'textColorHex': PropertySchema(
      id: 1,
      name: r'textColorHex',
      type: IsarType.string,
    )
  },
  estimateSize: _genreEstimateSize,
  serialize: _genreSerialize,
  deserialize: _genreDeserialize,
  deserializeProp: _genreDeserializeProp,
);

int _genreEstimateSize(
  Genre object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.backgroudColorHex.length * 3;
  bytesCount += 3 + object.textColorHex.length * 3;
  return bytesCount;
}

void _genreSerialize(
  Genre object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backgroudColorHex);
  writer.writeString(offsets[1], object.textColorHex);
}

Genre _genreDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Genre();
  object.backgroudColorHex = reader.readString(offsets[0]);
  object.textColorHex = reader.readString(offsets[1]);
  return object;
}

P _genreDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenreQueryFilter on QueryBuilder<Genre, Genre, QFilterCondition> {
  QueryBuilder<Genre, Genre, QAfterFilterCondition> backgroudColorHexEqualTo(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition>
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> backgroudColorHexLessThan(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> backgroudColorHexBetween(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> backgroudColorHexStartsWith(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> backgroudColorHexEndsWith(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> backgroudColorHexContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backgroudColorHex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Genre, Genre, QAfterFilterCondition> backgroudColorHexMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backgroudColorHex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Genre, Genre, QAfterFilterCondition> backgroudColorHexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroudColorHex',
        value: '',
      ));
    });
  }

  QueryBuilder<Genre, Genre, QAfterFilterCondition>
      backgroudColorHexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backgroudColorHex',
        value: '',
      ));
    });
  }

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexEqualTo(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexGreaterThan(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexLessThan(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexBetween(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexStartsWith(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexEndsWith(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexContains(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexMatches(
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

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textColorHex',
        value: '',
      ));
    });
  }

  QueryBuilder<Genre, Genre, QAfterFilterCondition> textColorHexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textColorHex',
        value: '',
      ));
    });
  }
}

extension GenreQueryObject on QueryBuilder<Genre, Genre, QFilterCondition> {}
