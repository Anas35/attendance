// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentAttendance _$$_StudentAttendanceFromJson(Map<String, dynamic> json) =>
    _$_StudentAttendance(
      regNo: json['regNo'] as String,
      studentName: json['studentName'] as String,
      present: json['present'] as String,
      absent: json['absent'] as String,
      percentage: json['percentage'] as String,
      records: (json['records'] as List<dynamic>?)
              ?.map(
                  (e) => SubjectAttendance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_StudentAttendanceToJson(
        _$_StudentAttendance instance) =>
    <String, dynamic>{
      'regNo': instance.regNo,
      'studentName': instance.studentName,
      'present': instance.present,
      'absent': instance.absent,
      'percentage': instance.percentage,
      'records': instance.records,
    };

_$_SubjectAttendance _$$_SubjectAttendanceFromJson(Map<String, dynamic> json) =>
    _$_SubjectAttendance(
      subjectId: json['subjectId'] as int,
      subjectName: json['subjectName'] as String,
      present: json['present'] as String,
      absent: json['absent'] as String,
      percentage: json['percentage'] as String,
    );

Map<String, dynamic> _$$_SubjectAttendanceToJson(
        _$_SubjectAttendance instance) =>
    <String, dynamic>{
      'subjectId': instance.subjectId,
      'subjectName': instance.subjectName,
      'present': instance.present,
      'absent': instance.absent,
      'percentage': instance.percentage,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getStudentRecordsHash() => r'94c87b7f7c354fe819fa7bed6255b63a7bb7fe44';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GetStudentRecordsRef = AutoDisposeFutureProviderRef<StudentAttendance>;

/// See also [getStudentRecords].
@ProviderFor(getStudentRecords)
const getStudentRecordsProvider = GetStudentRecordsFamily();

/// See also [getStudentRecords].
class GetStudentRecordsFamily extends Family<AsyncValue<StudentAttendance>> {
  /// See also [getStudentRecords].
  const GetStudentRecordsFamily();

  /// See also [getStudentRecords].
  GetStudentRecordsProvider call({
    required String regNo,
    DateTime? fromDate,
    DateTime? until,
  }) {
    return GetStudentRecordsProvider(
      regNo: regNo,
      fromDate: fromDate,
      until: until,
    );
  }

  @override
  GetStudentRecordsProvider getProviderOverride(
    covariant GetStudentRecordsProvider provider,
  ) {
    return call(
      regNo: provider.regNo,
      fromDate: provider.fromDate,
      until: provider.until,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getStudentRecordsProvider';
}

/// See also [getStudentRecords].
class GetStudentRecordsProvider
    extends AutoDisposeFutureProvider<StudentAttendance> {
  /// See also [getStudentRecords].
  GetStudentRecordsProvider({
    required this.regNo,
    this.fromDate,
    this.until,
  }) : super.internal(
          (ref) => getStudentRecords(
            ref,
            regNo: regNo,
            fromDate: fromDate,
            until: until,
          ),
          from: getStudentRecordsProvider,
          name: r'getStudentRecordsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStudentRecordsHash,
          dependencies: GetStudentRecordsFamily._dependencies,
          allTransitiveDependencies:
              GetStudentRecordsFamily._allTransitiveDependencies,
        );

  final String regNo;
  final DateTime? fromDate;
  final DateTime? until;

  @override
  bool operator ==(Object other) {
    return other is GetStudentRecordsProvider &&
        other.regNo == regNo &&
        other.fromDate == fromDate &&
        other.until == until;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, regNo.hashCode);
    hash = _SystemHash.combine(hash, fromDate.hashCode);
    hash = _SystemHash.combine(hash, until.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
