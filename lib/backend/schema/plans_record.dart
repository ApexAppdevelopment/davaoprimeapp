import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plans_record.g.dart';

abstract class PlansRecord implements Built<PlansRecord, PlansRecordBuilder> {
  static Serializer<PlansRecord> get serializer => _$plansRecordSerializer;

  @BuiltValueField(wireName: 'image_icon')
  String? get imageIcon;

  String? get title;

  String? get description;

  String? get amount;

  String? get interest;

  @BuiltValueField(wireName: 'start_date')
  DateTime? get startDate;

  @BuiltValueField(wireName: 'ending_date')
  DateTime? get endingDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlansRecordBuilder builder) => builder
    ..imageIcon = ''
    ..title = ''
    ..description = ''
    ..amount = ''
    ..interest = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Plans');

  static Stream<PlansRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlansRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlansRecord._();
  factory PlansRecord([void Function(PlansRecordBuilder) updates]) =
      _$PlansRecord;

  static PlansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlansRecordData({
  String? imageIcon,
  String? title,
  String? description,
  String? amount,
  String? interest,
  DateTime? startDate,
  DateTime? endingDate,
}) {
  final firestoreData = serializers.toFirestore(
    PlansRecord.serializer,
    PlansRecord(
      (p) => p
        ..imageIcon = imageIcon
        ..title = title
        ..description = description
        ..amount = amount
        ..interest = interest
        ..startDate = startDate
        ..endingDate = endingDate,
    ),
  );

  return firestoreData;
}
