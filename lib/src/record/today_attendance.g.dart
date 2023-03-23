// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodayAttendanceList _$$_TodayAttendanceListFromJson(
        Map<String, dynamic> json) =>
    _$_TodayAttendanceList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => TodayAttendance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TodayAttendanceListToJson(
        _$_TodayAttendanceList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_TodayAttendance _$$_TodayAttendanceFromJson(Map<String, dynamic> json) =>
    _$_TodayAttendance(
      subjectId: json['subjectId'] as int,
      subjectName: json['subjectName'] as String,
      isPresent: json['isPresent'] as int,
    );

Map<String, dynamic> _$$_TodayAttendanceToJson(_$_TodayAttendance instance) =>
    <String, dynamic>{
      'subjectId': instance.subjectId,
      'subjectName': instance.subjectName,
      'isPresent': instance.isPresent,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTodayStudentRecordsHash() =>
    r'6a8497486daee9b412607b0992bf66aad1dae824';

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

typedef GetTodayStudentRecordsRef
    = AutoDisposeFutureProviderRef<TodayAttendanceList>;

/// See also [getTodayStudentRecords].
@ProviderFor(getTodayStudentRecords)
const getTodayStudentRecordsProvider = GetTodayStudentRecordsFamily();

/// See also [getTodayStudentRecords].
class GetTodayStudentRecordsFamily
    extends Family<AsyncValue<TodayAttendanceList>> {
  /// See also [getTodayStudentRecords].
  const GetTodayStudentRecordsFamily();

  /// See also [getTodayStudentRecords].
  GetTodayStudentRecordsProvider call({
    required String regNo,
  }) {
    return GetTodayStudentRecordsProvider(
      regNo: regNo,
    );
  }

  @override
  GetTodayStudentRecordsProvider getProviderOverride(
    covariant GetTodayStudentRecordsProvider provider,
  ) {
    return call(
      regNo: provider.regNo,
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
  String? get name => r'getTodayStudentRecordsProvider';
}

/// See also [getTodayStudentRecords].
class GetTodayStudentRecordsProvider
    extends AutoDisposeFutureProvider<TodayAttendanceList> {
  /// See also [getTodayStudentRecords].
  GetTodayStudentRecordsProvider({
    required this.regNo,
  }) : super.internal(
          (ref) => getTodayStudentRecords(
            ref,
            regNo: regNo,
          ),
          from: getTodayStudentRecordsProvider,
          name: r'getTodayStudentRecordsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTodayStudentRecordsHash,
          dependencies: GetTodayStudentRecordsFamily._dependencies,
          allTransitiveDependencies:
              GetTodayStudentRecordsFamily._allTransitiveDependencies,
        );

  final String regNo;

  @override
  bool operator ==(Object other) {
    return other is GetTodayStudentRecordsProvider && other.regNo == regNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, regNo.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
