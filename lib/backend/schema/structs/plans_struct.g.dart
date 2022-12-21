// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plans_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlansStruct> _$plansStructSerializer = new _$PlansStructSerializer();

class _$PlansStructSerializer implements StructuredSerializer<PlansStruct> {
  @override
  final Iterable<Type> types = const [PlansStruct, _$PlansStruct];
  @override
  final String wireName = 'PlansStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlansStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.imageIcon;
    if (value != null) {
      result
        ..add('image_icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.interest;
    if (value != null) {
      result
        ..add('interest')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endingDate;
    if (value != null) {
      result
        ..add('ending_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  PlansStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlansStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image_icon':
          result.imageIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'interest':
          result.interest = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ending_date':
          result.endingDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$PlansStruct extends PlansStruct {
  @override
  final String? imageIcon;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? amount;
  @override
  final int? interest;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endingDate;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PlansStruct([void Function(PlansStructBuilder)? updates]) =>
      (new PlansStructBuilder()..update(updates))._build();

  _$PlansStruct._(
      {this.imageIcon,
      this.title,
      this.description,
      this.amount,
      this.interest,
      this.startDate,
      this.endingDate,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PlansStruct', 'firestoreUtilData');
  }

  @override
  PlansStruct rebuild(void Function(PlansStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlansStructBuilder toBuilder() => new PlansStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlansStruct &&
        imageIcon == other.imageIcon &&
        title == other.title &&
        description == other.description &&
        amount == other.amount &&
        interest == other.interest &&
        startDate == other.startDate &&
        endingDate == other.endingDate &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, imageIcon.hashCode), title.hashCode),
                            description.hashCode),
                        amount.hashCode),
                    interest.hashCode),
                startDate.hashCode),
            endingDate.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlansStruct')
          ..add('imageIcon', imageIcon)
          ..add('title', title)
          ..add('description', description)
          ..add('amount', amount)
          ..add('interest', interest)
          ..add('startDate', startDate)
          ..add('endingDate', endingDate)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PlansStructBuilder implements Builder<PlansStruct, PlansStructBuilder> {
  _$PlansStruct? _$v;

  String? _imageIcon;
  String? get imageIcon => _$this._imageIcon;
  set imageIcon(String? imageIcon) => _$this._imageIcon = imageIcon;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  int? _interest;
  int? get interest => _$this._interest;
  set interest(int? interest) => _$this._interest = interest;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endingDate;
  DateTime? get endingDate => _$this._endingDate;
  set endingDate(DateTime? endingDate) => _$this._endingDate = endingDate;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PlansStructBuilder() {
    PlansStruct._initializeBuilder(this);
  }

  PlansStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageIcon = $v.imageIcon;
      _title = $v.title;
      _description = $v.description;
      _amount = $v.amount;
      _interest = $v.interest;
      _startDate = $v.startDate;
      _endingDate = $v.endingDate;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlansStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlansStruct;
  }

  @override
  void update(void Function(PlansStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlansStruct build() => _build();

  _$PlansStruct _build() {
    final _$result = _$v ??
        new _$PlansStruct._(
            imageIcon: imageIcon,
            title: title,
            description: description,
            amount: amount,
            interest: interest,
            startDate: startDate,
            endingDate: endingDate,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'PlansStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
