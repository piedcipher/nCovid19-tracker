// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ncovid_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NCovidData> _$nCovidDataSerializer = new _$NCovidDataSerializer();
Serializer<CountryData> _$countryDataSerializer = new _$CountryDataSerializer();
Serializer<Info> _$infoSerializer = new _$InfoSerializer();
Serializer<CountryNewsItems> _$countryNewsItemsSerializer =
    new _$CountryNewsItemsSerializer();
Serializer<NewsItem> _$newsItemSerializer = new _$NewsItemSerializer();

class _$NCovidDataSerializer implements StructuredSerializer<NCovidData> {
  @override
  final Iterable<Type> types = const [NCovidData, _$NCovidData];
  @override
  final String wireName = 'NCovidData';

  @override
  Iterable<Object> serialize(Serializers serializers, NCovidData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.countryData != null) {
      result
        ..add('countrydata')
        ..add(serializers.serialize(object.countryData,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CountryData)])));
    }
    return result;
  }

  @override
  NCovidData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NCovidDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'countrydata':
          result.countryData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountryData)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CountryDataSerializer implements StructuredSerializer<CountryData> {
  @override
  final Iterable<Type> types = const [CountryData, _$CountryData];
  @override
  final String wireName = 'CountryData';

  @override
  Iterable<Object> serialize(Serializers serializers, CountryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(Info)));
    }
    if (object.totalCases != null) {
      result
        ..add('total_cases')
        ..add(serializers.serialize(object.totalCases,
            specifiedType: const FullType(int)));
    }
    if (object.totalRecovered != null) {
      result
        ..add('total_recovered')
        ..add(serializers.serialize(object.totalRecovered,
            specifiedType: const FullType(int)));
    }
    if (object.totalUnresolved != null) {
      result
        ..add('total_unresolved')
        ..add(serializers.serialize(object.totalUnresolved,
            specifiedType: const FullType(int)));
    }
    if (object.totalDeaths != null) {
      result
        ..add('total_deaths')
        ..add(serializers.serialize(object.totalDeaths,
            specifiedType: const FullType(int)));
    }
    if (object.totalNewCasesToday != null) {
      result
        ..add('total_new_cases_today')
        ..add(serializers.serialize(object.totalNewCasesToday,
            specifiedType: const FullType(int)));
    }
    if (object.totalNewDeathsToday != null) {
      result
        ..add('total_new_deaths_today')
        ..add(serializers.serialize(object.totalNewDeathsToday,
            specifiedType: const FullType(int)));
    }
    if (object.totalActiveCases != null) {
      result
        ..add('total_active_cases')
        ..add(serializers.serialize(object.totalActiveCases,
            specifiedType: const FullType(int)));
    }
    if (object.totalSeriousCases != null) {
      result
        ..add('total_serius_cases')
        ..add(serializers.serialize(object.totalSeriousCases,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CountryData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(Info)) as Info);
          break;
        case 'total_cases':
          result.totalCases = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_recovered':
          result.totalRecovered = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_unresolved':
          result.totalUnresolved = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_deaths':
          result.totalDeaths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_new_cases_today':
          result.totalNewCasesToday = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_new_deaths_today':
          result.totalNewDeathsToday = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_active_cases':
          result.totalActiveCases = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_serius_cases':
          result.totalSeriousCases = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$InfoSerializer implements StructuredSerializer<Info> {
  @override
  final Iterable<Type> types = const [Info, _$Info];
  @override
  final String wireName = 'Info';

  @override
  Iterable<Object> serialize(Serializers serializers, Info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ourId != null) {
      result
        ..add('ourid')
        ..add(serializers.serialize(object.ourId,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(String)));
    }
    if (object.source != null) {
      result
        ..add('source')
        ..add(serializers.serialize(object.source,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Info deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ourid':
          result.ourId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryNewsItemsSerializer
    implements StructuredSerializer<CountryNewsItems> {
  @override
  final Iterable<Type> types = const [CountryNewsItems, _$CountryNewsItems];
  @override
  final String wireName = 'CountryNewsItems';

  @override
  Iterable<Object> serialize(Serializers serializers, CountryNewsItems object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  CountryNewsItems deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new CountryNewsItemsBuilder().build();
  }
}

class _$NewsItemSerializer implements StructuredSerializer<NewsItem> {
  @override
  final Iterable<Type> types = const [NewsItem, _$NewsItem];
  @override
  final String wireName = 'NewsItem';

  @override
  Iterable<Object> serialize(Serializers serializers, NewsItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.newsId != null) {
      result
        ..add('newsid')
        ..add(serializers.serialize(object.newsId,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NewsItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'newsid':
          result.newsId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NCovidData extends NCovidData {
  @override
  final BuiltList<CountryData> countryData;

  factory _$NCovidData([void Function(NCovidDataBuilder) updates]) =>
      (new NCovidDataBuilder()..update(updates)).build();

  _$NCovidData._({this.countryData}) : super._();

  @override
  NCovidData rebuild(void Function(NCovidDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NCovidDataBuilder toBuilder() => new NCovidDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NCovidData && countryData == other.countryData;
  }

  @override
  int get hashCode {
    return $jf($jc(0, countryData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NCovidData')
          ..add('countryData', countryData))
        .toString();
  }
}

class NCovidDataBuilder implements Builder<NCovidData, NCovidDataBuilder> {
  _$NCovidData _$v;

  ListBuilder<CountryData> _countryData;
  ListBuilder<CountryData> get countryData =>
      _$this._countryData ??= new ListBuilder<CountryData>();
  set countryData(ListBuilder<CountryData> countryData) =>
      _$this._countryData = countryData;

  NCovidDataBuilder();

  NCovidDataBuilder get _$this {
    if (_$v != null) {
      _countryData = _$v.countryData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NCovidData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NCovidData;
  }

  @override
  void update(void Function(NCovidDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NCovidData build() {
    _$NCovidData _$result;
    try {
      _$result = _$v ?? new _$NCovidData._(countryData: _countryData?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'countryData';
        _countryData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NCovidData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CountryData extends CountryData {
  @override
  final Info info;
  @override
  final int totalCases;
  @override
  final int totalRecovered;
  @override
  final int totalUnresolved;
  @override
  final int totalDeaths;
  @override
  final int totalNewCasesToday;
  @override
  final int totalNewDeathsToday;
  @override
  final int totalActiveCases;
  @override
  final int totalSeriousCases;

  factory _$CountryData([void Function(CountryDataBuilder) updates]) =>
      (new CountryDataBuilder()..update(updates)).build();

  _$CountryData._(
      {this.info,
      this.totalCases,
      this.totalRecovered,
      this.totalUnresolved,
      this.totalDeaths,
      this.totalNewCasesToday,
      this.totalNewDeathsToday,
      this.totalActiveCases,
      this.totalSeriousCases})
      : super._();

  @override
  CountryData rebuild(void Function(CountryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryDataBuilder toBuilder() => new CountryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryData &&
        info == other.info &&
        totalCases == other.totalCases &&
        totalRecovered == other.totalRecovered &&
        totalUnresolved == other.totalUnresolved &&
        totalDeaths == other.totalDeaths &&
        totalNewCasesToday == other.totalNewCasesToday &&
        totalNewDeathsToday == other.totalNewDeathsToday &&
        totalActiveCases == other.totalActiveCases &&
        totalSeriousCases == other.totalSeriousCases;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, info.hashCode), totalCases.hashCode),
                                totalRecovered.hashCode),
                            totalUnresolved.hashCode),
                        totalDeaths.hashCode),
                    totalNewCasesToday.hashCode),
                totalNewDeathsToday.hashCode),
            totalActiveCases.hashCode),
        totalSeriousCases.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryData')
          ..add('info', info)
          ..add('totalCases', totalCases)
          ..add('totalRecovered', totalRecovered)
          ..add('totalUnresolved', totalUnresolved)
          ..add('totalDeaths', totalDeaths)
          ..add('totalNewCasesToday', totalNewCasesToday)
          ..add('totalNewDeathsToday', totalNewDeathsToday)
          ..add('totalActiveCases', totalActiveCases)
          ..add('totalSeriousCases', totalSeriousCases))
        .toString();
  }
}

class CountryDataBuilder implements Builder<CountryData, CountryDataBuilder> {
  _$CountryData _$v;

  InfoBuilder _info;
  InfoBuilder get info => _$this._info ??= new InfoBuilder();
  set info(InfoBuilder info) => _$this._info = info;

  int _totalCases;
  int get totalCases => _$this._totalCases;
  set totalCases(int totalCases) => _$this._totalCases = totalCases;

  int _totalRecovered;
  int get totalRecovered => _$this._totalRecovered;
  set totalRecovered(int totalRecovered) =>
      _$this._totalRecovered = totalRecovered;

  int _totalUnresolved;
  int get totalUnresolved => _$this._totalUnresolved;
  set totalUnresolved(int totalUnresolved) =>
      _$this._totalUnresolved = totalUnresolved;

  int _totalDeaths;
  int get totalDeaths => _$this._totalDeaths;
  set totalDeaths(int totalDeaths) => _$this._totalDeaths = totalDeaths;

  int _totalNewCasesToday;
  int get totalNewCasesToday => _$this._totalNewCasesToday;
  set totalNewCasesToday(int totalNewCasesToday) =>
      _$this._totalNewCasesToday = totalNewCasesToday;

  int _totalNewDeathsToday;
  int get totalNewDeathsToday => _$this._totalNewDeathsToday;
  set totalNewDeathsToday(int totalNewDeathsToday) =>
      _$this._totalNewDeathsToday = totalNewDeathsToday;

  int _totalActiveCases;
  int get totalActiveCases => _$this._totalActiveCases;
  set totalActiveCases(int totalActiveCases) =>
      _$this._totalActiveCases = totalActiveCases;

  int _totalSeriousCases;
  int get totalSeriousCases => _$this._totalSeriousCases;
  set totalSeriousCases(int totalSeriousCases) =>
      _$this._totalSeriousCases = totalSeriousCases;

  CountryDataBuilder();

  CountryDataBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _totalCases = _$v.totalCases;
      _totalRecovered = _$v.totalRecovered;
      _totalUnresolved = _$v.totalUnresolved;
      _totalDeaths = _$v.totalDeaths;
      _totalNewCasesToday = _$v.totalNewCasesToday;
      _totalNewDeathsToday = _$v.totalNewDeathsToday;
      _totalActiveCases = _$v.totalActiveCases;
      _totalSeriousCases = _$v.totalSeriousCases;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountryData;
  }

  @override
  void update(void Function(CountryDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryData build() {
    _$CountryData _$result;
    try {
      _$result = _$v ??
          new _$CountryData._(
              info: _info?.build(),
              totalCases: totalCases,
              totalRecovered: totalRecovered,
              totalUnresolved: totalUnresolved,
              totalDeaths: totalDeaths,
              totalNewCasesToday: totalNewCasesToday,
              totalNewDeathsToday: totalNewDeathsToday,
              totalActiveCases: totalActiveCases,
              totalSeriousCases: totalSeriousCases);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Info extends Info {
  @override
  final int ourId;
  @override
  final String title;
  @override
  final String code;
  @override
  final String source;

  factory _$Info([void Function(InfoBuilder) updates]) =>
      (new InfoBuilder()..update(updates)).build();

  _$Info._({this.ourId, this.title, this.code, this.source}) : super._();

  @override
  Info rebuild(void Function(InfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfoBuilder toBuilder() => new InfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Info &&
        ourId == other.ourId &&
        title == other.title &&
        code == other.code &&
        source == other.source;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, ourId.hashCode), title.hashCode), code.hashCode),
        source.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Info')
          ..add('ourId', ourId)
          ..add('title', title)
          ..add('code', code)
          ..add('source', source))
        .toString();
  }
}

class InfoBuilder implements Builder<Info, InfoBuilder> {
  _$Info _$v;

  int _ourId;
  int get ourId => _$this._ourId;
  set ourId(int ourId) => _$this._ourId = ourId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _source;
  String get source => _$this._source;
  set source(String source) => _$this._source = source;

  InfoBuilder();

  InfoBuilder get _$this {
    if (_$v != null) {
      _ourId = _$v.ourId;
      _title = _$v.title;
      _code = _$v.code;
      _source = _$v.source;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Info other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Info;
  }

  @override
  void update(void Function(InfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Info build() {
    final _$result = _$v ??
        new _$Info._(ourId: ourId, title: title, code: code, source: source);
    replace(_$result);
    return _$result;
  }
}

class _$CountryNewsItems extends CountryNewsItems {
  factory _$CountryNewsItems(
          [void Function(CountryNewsItemsBuilder) updates]) =>
      (new CountryNewsItemsBuilder()..update(updates)).build();

  _$CountryNewsItems._() : super._();

  @override
  CountryNewsItems rebuild(void Function(CountryNewsItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryNewsItemsBuilder toBuilder() =>
      new CountryNewsItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryNewsItems;
  }

  @override
  int get hashCode {
    return 595373972;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CountryNewsItems').toString();
  }
}

class CountryNewsItemsBuilder
    implements Builder<CountryNewsItems, CountryNewsItemsBuilder> {
  _$CountryNewsItems _$v;

  CountryNewsItemsBuilder();

  @override
  void replace(CountryNewsItems other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountryNewsItems;
  }

  @override
  void update(void Function(CountryNewsItemsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryNewsItems build() {
    final _$result = _$v ?? new _$CountryNewsItems._();
    replace(_$result);
    return _$result;
  }
}

class _$NewsItem extends NewsItem {
  @override
  final String newsId;
  @override
  final String title;
  @override
  final String image;
  @override
  final String time;
  @override
  final String url;

  factory _$NewsItem([void Function(NewsItemBuilder) updates]) =>
      (new NewsItemBuilder()..update(updates)).build();

  _$NewsItem._({this.newsId, this.title, this.image, this.time, this.url})
      : super._();

  @override
  NewsItem rebuild(void Function(NewsItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsItemBuilder toBuilder() => new NewsItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsItem &&
        newsId == other.newsId &&
        title == other.title &&
        image == other.image &&
        time == other.time &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, newsId.hashCode), title.hashCode), image.hashCode),
            time.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewsItem')
          ..add('newsId', newsId)
          ..add('title', title)
          ..add('image', image)
          ..add('time', time)
          ..add('url', url))
        .toString();
  }
}

class NewsItemBuilder implements Builder<NewsItem, NewsItemBuilder> {
  _$NewsItem _$v;

  String _newsId;
  String get newsId => _$this._newsId;
  set newsId(String newsId) => _$this._newsId = newsId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  NewsItemBuilder();

  NewsItemBuilder get _$this {
    if (_$v != null) {
      _newsId = _$v.newsId;
      _title = _$v.title;
      _image = _$v.image;
      _time = _$v.time;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewsItem;
  }

  @override
  void update(void Function(NewsItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewsItem build() {
    final _$result = _$v ??
        new _$NewsItem._(
            newsId: newsId, title: title, image: image, time: time, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
