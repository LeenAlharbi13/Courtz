import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourtsRecord extends FirestoreRecord {
  CourtsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "bookingFee" field.
  double? _bookingFee;
  double get bookingFee => _bookingFee ?? 0.0;
  bool hasBookingFee() => _bookingFee != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _bookingFee = castToType<double>(snapshotData['bookingFee']);
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _location = snapshotData['location'] as String?;
    _name = snapshotData['name'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Courts');

  static Stream<CourtsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourtsRecord.fromSnapshot(s));

  static Future<CourtsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourtsRecord.fromSnapshot(s));

  static CourtsRecord fromSnapshot(DocumentSnapshot snapshot) => CourtsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourtsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourtsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourtsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourtsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourtsRecordData({
  double? bookingFee,
  String? description,
  String? image,
  String? location,
  String? name,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bookingFee': bookingFee,
      'description': description,
      'image': image,
      'location': location,
      'name': name,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourtsRecordDocumentEquality implements Equality<CourtsRecord> {
  const CourtsRecordDocumentEquality();

  @override
  bool equals(CourtsRecord? e1, CourtsRecord? e2) {
    return e1?.bookingFee == e2?.bookingFee &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.location == e2?.location &&
        e1?.name == e2?.name &&
        e1?.type == e2?.type;
  }

  @override
  int hash(CourtsRecord? e) => const ListEquality().hash(
      [e?.bookingFee, e?.description, e?.image, e?.location, e?.name, e?.type]);

  @override
  bool isValidKey(Object? o) => o is CourtsRecord;
}
