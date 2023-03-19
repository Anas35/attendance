// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subject _$SubjectFromJson(Map<String, dynamic> json) => Subject(
      subjectId: json['subjectId'] as int,
      subjectName: json['subjectName'] as String,
      departmentId: json['departmentId'] as int,
    );

Map<String, dynamic> _$SubjectToJson(Subject instance) => <String, dynamic>{
      'subjectId': instance.subjectId,
      'subjectName': instance.subjectName,
      'departmentId': instance.departmentId,
    };

SubjectList _$SubjectListFromJson(Map<String, dynamic> json) => SubjectList(
      data: (json['data'] as List<dynamic>)
          .map((e) => Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubjectListToJson(SubjectList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSubjectListHash() => r'148c7c3daae7d76dba846ad7022f77a2c18b8ffd';

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

typedef GetSubjectListRef = AutoDisposeFutureProviderRef<List<Subject>>;

/// See also [getSubjectList].
@ProviderFor(getSubjectList)
const getSubjectListProvider = GetSubjectListFamily();

/// See also [getSubjectList].
class GetSubjectListFamily extends Family<AsyncValue<List<Subject>>> {
  /// See also [getSubjectList].
  const GetSubjectListFamily();

  /// See also [getSubjectList].
  GetSubjectListProvider call({
    int? departmentId,
  }) {
    return GetSubjectListProvider(
      departmentId: departmentId,
    );
  }

  @override
  GetSubjectListProvider getProviderOverride(
    covariant GetSubjectListProvider provider,
  ) {
    return call(
      departmentId: provider.departmentId,
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
  String? get name => r'getSubjectListProvider';
}

/// See also [getSubjectList].
class GetSubjectListProvider extends AutoDisposeFutureProvider<List<Subject>> {
  /// See also [getSubjectList].
  GetSubjectListProvider({
    this.departmentId,
  }) : super.internal(
          (ref) => getSubjectList(
            ref,
            departmentId: departmentId,
          ),
          from: getSubjectListProvider,
          name: r'getSubjectListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSubjectListHash,
          dependencies: GetSubjectListFamily._dependencies,
          allTransitiveDependencies:
              GetSubjectListFamily._allTransitiveDependencies,
        );

  final int? departmentId;

  @override
  bool operator ==(Object other) {
    return other is GetSubjectListProvider &&
        other.departmentId == departmentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, departmentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$selectedSubjectHash() => r'95fb54f1151a480de158e17c05fc1b115b79550a';

/// See also [SelectedSubject].
@ProviderFor(SelectedSubject)
final selectedSubjectProvider =
    AutoDisposeNotifierProvider<SelectedSubject, Subject?>.internal(
  SelectedSubject.new,
  name: r'selectedSubjectProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedSubjectHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedSubject = AutoDisposeNotifier<Subject?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
