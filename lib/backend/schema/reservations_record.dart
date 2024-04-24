import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReservationsRecord extends FirestoreRecord {
  ReservationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "courtID" field.
  DocumentReference? _courtID;
  DocumentReference? get courtID => _courtID;
  bool hasCourtID() => _courtID != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "refereeRequested" field.
  bool? _refereeRequested;
  bool get refereeRequested => _refereeRequested ?? false;
  bool hasRefereeRequested() => _refereeRequested != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "Time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  void _initializeFields() {
    _courtID = snapshotData['courtID'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _refereeRequested = snapshotData['refereeRequested'] as bool?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _time = snapshotData['Time'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reservations');

  static Stream<ReservationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationsRecord.fromSnapshot(s));

  static Future<ReservationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationsRecord.fromSnapshot(s));

  static ReservationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationsRecordData({
  DocumentReference? courtID,
  DateTime? date,
  bool? refereeRequested,
  DocumentReference? userID,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courtID': courtID,
      'date': date,
      'refereeRequested': refereeRequested,
      'userID': userID,
      'Time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationsRecordDocumentEquality
    implements Equality<ReservationsRecord> {
  const ReservationsRecordDocumentEquality();

  @override
  bool equals(ReservationsRecord? e1, ReservationsRecord? e2) {
    return e1?.courtID == e2?.courtID &&
        e1?.date == e2?.date &&
        e1?.refereeRequested == e2?.refereeRequested &&
        e1?.userID == e2?.userID &&
        e1?.time == e2?.time;
  }

  @override
  int hash(ReservationsRecord? e) => const ListEquality()
      .hash([e?.courtID, e?.date, e?.refereeRequested, e?.userID, e?.time]);

  @override
  bool isValidKey(Object? o) => o is ReservationsRecord;
}
