import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'ncovid_data.g.dart';

abstract class NCovidData implements Built<NCovidData, NCovidDataBuilder> {
  @nullable
  @BuiltValueField(wireName: 'countrydata')
  BuiltList<CountryData> get countryData;

//  @nullable
//  @BuiltValueField(wireName: 'countrynewsitems')
//  BuiltList<CountryNewsItems> get countryNewsItems;

  NCovidData._();

  factory NCovidData([updates(NCovidDataBuilder b)]) = _$NCovidData;

  String toJson() {
    return json.encode(serializers.serializeWith(NCovidData.serializer, this));
  }

  static NCovidData fromJson(String jsonString) {
    return serializers.deserializeWith(
        NCovidData.serializer, json.decode(jsonString));
  }

  static Serializer<NCovidData> get serializer => _$nCovidDataSerializer;
}

abstract class CountryData implements Built<CountryData, CountryDataBuilder> {
  CountryData._();

  @nullable
  Info get info;

  @nullable
  @BuiltValueField(wireName: 'total_cases')
  int get totalCases;

  @nullable
  @BuiltValueField(wireName: 'total_recovered')
  int get totalRecovered;

  @nullable
  @BuiltValueField(wireName: 'total_unresolved')
  int get totalUnresolved;

  @nullable
  @BuiltValueField(wireName: 'total_deaths')
  int get totalDeaths;

  @nullable
  @BuiltValueField(wireName: 'total_new_cases_today')
  int get totalNewCasesToday;

  @nullable
  @BuiltValueField(wireName: 'total_new_deaths_today')
  int get totalNewDeathsToday;

  @nullable
  @BuiltValueField(wireName: 'total_active_cases')
  int get totalActiveCases;

  @nullable
  @BuiltValueField(wireName: 'total_serius_cases')
  int get totalSeriousCases;

  factory CountryData([updates(CountryDataBuilder b)]) = _$CountryData;

  String toJson() {
    return json.encode(serializers.serializeWith(CountryData.serializer, this));
  }

  static CountryData fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryData.serializer, json.decode(jsonString));
  }

  static Serializer<CountryData> get serializer => _$countryDataSerializer;
}

abstract class Info implements Built<Info, InfoBuilder> {
  Info._();

  @nullable
  @BuiltValueField(wireName: 'ourid')
  int get ourId;

  @nullable
  String get title;

  @nullable
  String get code;

  @nullable
  String get source;

  factory Info([updates(InfoBuilder b)]) = _$Info;

  String toJson() {
    return json.encode(serializers.serializeWith(Info.serializer, this));
  }

  static Info fromJson(String jsonString) {
    return serializers.deserializeWith(
        Info.serializer, json.decode(jsonString));
  }

  static Serializer<Info> get serializer => _$infoSerializer;
}

abstract class CountryNewsItems
    implements Built<CountryNewsItems, CountryNewsItemsBuilder> {
  CountryNewsItems._();

  @nullable
  factory CountryNewsItems([updates(CountryNewsItemsBuilder b)]) =
      _$CountryNewsItems;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CountryNewsItems.serializer, this));
  }

  static CountryNewsItems fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountryNewsItems.serializer, json.decode(jsonString));
  }

  static Serializer<CountryNewsItems> get serializer =>
      _$countryNewsItemsSerializer;
}

abstract class NewsItem implements Built<NewsItem, NewsItemBuilder> {
  NewsItem._();

  @nullable
  @BuiltValueField(wireName: 'newsid')
  String get newsId;

  @nullable
  String get title;

  @nullable
  String get image;

  @nullable
  String get time;

  @nullable
  String get url;

  @nullable
  factory NewsItem([updates(NewsItemBuilder b)]) = _$NewsItem;

  String toJson() {
    return json.encode(serializers.serializeWith(NewsItem.serializer, this));
  }

  static NewsItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        NewsItem.serializer, json.decode(jsonString));
  }

  static Serializer<NewsItem> get serializer => _$newsItemSerializer;
}
