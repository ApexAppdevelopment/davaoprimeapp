// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plans_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlansRecord> _$plansRecordSerializer = new _$PlansRecordSerializer();

class _$PlansRecordSerializer implements StructuredSerializer<PlansRecord> {
  @override
  final Iterable<Type> types = const [PlansRecord, _$PlansRecord];
  @override
  final String wireName = 'PlansRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlansRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interest;
    if (value != null) {
      result
        ..add('interest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PlansRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlansRecordBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interest':
          result.interest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ending_date':
          result.endingDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PlansRecord extends PlansRecord {
  @override
  final String? imageIcon;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? amount;
  @override
  final String? interest;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endingDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlansRecord([void Function(PlansRecordBuilder)? updates]) =>
      (new PlansRecordBuilder()..update(updates))._build();

  _$PlansRecord._(
      {this.imageIcon,
      this.title,
      this.description,
      this.amount,
      this.interest,
      this.startDate,
      this.endingDate,
      this.ffRef})
      : super._();

  @override
  PlansRecord rebuild(void Function(PlansRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlansRecordBuilder toBuilder() => new PlansRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlansRecord &&
        imageIcon == other.imageIcon &&
        title == other.title &&
        description == other.description &&
        amount == other.amount &&
        interest == other.interest &&
        startDate == other.startDate &&
        endingDate == other.endingDate &&
        ffRef == other.ffRef;
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
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlansRecord')
          ..add('imageIcon', imageIcon)
          ..add('title', title)
          ..add('description', description)
          ..add('amount', amount)
          ..add('interest', interest)
          ..add('startDate', startDate)
          ..add('endingDate', endingDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlansRecordBuilder implements Builder<PlansRecord, PlansRecordBuilder> {
  _$PlansRecord? _$v;

  String? _imageIcon;
  String? get imageIcon => _$this._imageIcon;
  set imageIcon(String? imageIcon) => _$this._imageIcon = imageIcon;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _interest;
  String? get interest => _$this._interest;
  set interest(String? interest) => _$this._interest = interest;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endingDate;
  DateTime? get endingDate => _$this._endingDate;
  set endingDate(DateTime? endingDate) => _$this._endingDate = endingDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlansRecordBuilder() {
    PlansRecord._initializeBuilder(this);
  }

  PlansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageIcon = $v.imageIcon;
      _title = $v.title;
      _description = $v.description;
      _amount = $v.amount;
      _interest = $v.interest;
      _startDate = $v.startDate;
      _endingDate = $v.endingDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlansRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlansRecord;
  }

  @override
  void update(void Function(PlansRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlansRecord build() => _build();

  _$PlansRecord _build() {
    final _$result = _$v ??
        new _$PlansRecord._(
            imageIcon: imageIcon,
            title: title,
            description: description,
            amount: amount,
            interest: interest,
            startDate: startDate,
            endingDate: endingDate,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
