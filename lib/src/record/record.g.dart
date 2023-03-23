// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Record _$RecordFromJson(Map<String, dynamic> json) => Record(
      regNo: json['regNo'] as String,
      present: json['present'] as bool,
    );

Map<String, dynamic> _$RecordToJson(Record instance) => <String, dynamic>{
      'regNo': instance.regNo,
      'present': instance.present,
    };

_$_AttendanceRecordResponseList _$$_AttendanceRecordResponseListFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceRecordResponseList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  AttendanceRecordResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AttendanceRecordResponseListToJson(
        _$_AttendanceRecordResponseList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_AttendanceRecordResponse _$$_AttendanceRecordResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceRecordResponse(
      regNo: json['regNo'] as String?,
      studentName: json['studentName'] as String?,
      subjectId: json['subjectId'] as int?,
      subjectName: json['subjectName'] as String?,
      present: json['present'] as String,
      absent: json['absent'] as String?,
      percentage: json['percentage'] as String?,
    );

Map<String, dynamic> _$$_AttendanceRecordResponseToJson(
        _$_AttendanceRecordResponse instance) =>
    <String, dynamic>{
      'regNo': instance.regNo,
      'studentName': instance.studentName,
      'subjectId': instance.subjectId,
      'subjectName': instance.subjectName,
      'present': instance.present,
      'absent': instance.absent,
      'percentage': instance.percentage,
    };

_$_AttendanceRecord _$$_AttendanceRecordFromJson(Map<String, dynamic> json) =>
    _$_AttendanceRecord(
      records: (json['records'] as List<dynamic>?)
              ?.map((e) => Record.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      teacherId: json['teacherId'] as String,
      classId: json['classId'] as int,
      subjectId: json['subjectId'] as int,
    );

Map<String, dynamic> _$$_AttendanceRecordToJson(_$_AttendanceRecord instance) =>
    <String, dynamic>{
      'records': instance.records,
      'teacherId': instance.teacherId,
      'classId': instance.classId,
      'subjectId': instance.subjectId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getClassRecordsHash() => r'9ad8cbedaa864149caacccb17f1df5ee3732f68b';

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

typedef GetClassRecordsRef
    = AutoDisposeFutureProviderRef<AttendanceRecordResponseList>;

/// See also [getClassRecords].
@ProviderFor(getClassRecords)
const getClassRecordsProvider = GetClassRecordsFamily();

/// See also [getClassRecords].
class GetClassRecordsFamily
    extends Family<AsyncValue<AttendanceRecordResponseList>> {
  /// See also [getClassRecords].
  const GetClassRecordsFamily();

  /// See also [getClassRecords].
  GetClassRecordsProvider call({
    required int classId,
  }) {
    return GetClassRecordsProvider(
      classId: classId,
    );
  }

  @override
  GetClassRecordsProvider getProviderOverride(
    covariant GetClassRecordsProvider provider,
  ) {
    return call(
      classId: provider.classId,
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
  String? get name => r'getClassRecordsProvider';
}

/// See also [getClassRecords].
class GetClassRecordsProvider
    extends AutoDisposeFutureProvider<AttendanceRecordResponseList> {
  /// See also [getClassRecords].
  GetClassRecordsProvider({
    required this.classId,
  }) : super.internal(
          (ref) => getClassRecords(
            ref,
            classId: classId,
          ),
          from: getClassRecordsProvider,
          name: r'getClassRecordsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getClassRecordsHash,
          dependencies: GetClassRecordsFamily._dependencies,
          allTransitiveDependencies:
              GetClassRecordsFamily._allTransitiveDependencies,
        );

  final int classId;

  @override
  bool operator ==(Object other) {
    return other is GetClassRecordsProvider && other.classId == classId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, classId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$recordStateHash() => r'3f6303a64688f68c9d037f3b4f1a4386640776b8';

/// See also [RecordState].
@ProviderFor(RecordState)
final recordStateProvider =
    AutoDisposeAsyncNotifierProvider<RecordState, bool>.internal(
  RecordState.new,
  name: r'recordStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$recordStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RecordState = AutoDisposeAsyncNotifier<bool>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
