import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'plans_struct.g.dart';

abstract class PlansStruct implements Built<PlansStruct, PlansStructBuilder> {
  static Serializer<PlansStruct> get serializer => _$plansStructSerializer;

  @BuiltValueField(wireName: 'image_icon')
  String? get imageIcon;

  String? get title;

  String? get description;

  int? get amount;

  int? get interest;

  @BuiltValueField(wireName: 'start_date')
  DateTime? get startDate;

  @BuiltValueField(wireName: 'ending_date')
  DateTime? get endingDate;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PlansStructBuilder builder) => builder
    ..imageIcon = ''
    ..title = ''
    ..description = ''
    ..amount = 0
    ..interest = 0
    ..firestoreUtilData = FirestoreUtilData();

  PlansStruct._();
  factory PlansStruct([void Function(PlansStructBuilder) updates]) =
      _$PlansStruct;
}

PlansStruct createPlansStruct({
  String? imageIcon,
  String? title,
  String? description,
  int? amount,
  int? interest,
  DateTime? startDate,
  DateTime? endingDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlansStruct(
      (p) => p
        ..imageIcon = imageIcon
        ..title = title
        ..description = description
        ..amount = amount
        ..interest = interest
        ..startDate = startDate
        ..endingDate = endingDate
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PlansStruct? updatePlansStruct(
  PlansStruct? plans, {
  bool clearUnsetFields = true,
}) =>
    plans != null
        ? (plans.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPlansStructData(
  Map<String, dynamic> firestoreData,
  PlansStruct? plans,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (plans == null) {
    return;
  }
  if (plans.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && plans.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final plansData = getPlansFirestoreData(plans, forFieldValue);
  final nestedData = plansData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = plans.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPlansFirestoreData(
  PlansStruct? plans, [
  bool forFieldValue = false,
]) {
  if (plans == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(PlansStruct.serializer, plans);

  // Add any Firestore field values
  plans.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlansListFirestoreData(
  List<PlansStruct>? planss,
) =>
    planss?.map((p) => getPlansFirestoreData(p, true)).toList() ?? [];
