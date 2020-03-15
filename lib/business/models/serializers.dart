import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  NCovidData,
  CountryData,
  CountryNewsItems,
  Info,
  NewsItem,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
