import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Global,
  GlobalData,
  Country,
  CountryData,
  Info,
  CountryTimelineItem,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
