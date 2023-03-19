// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map<String, dynamic> json) => _$_Class(
      classId: json['classId'] as int,
      className: json['className'] as String,
      mentor: json['mentor'] as String,
      departmentId: json['departmentId'] as int,
    );

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'classId': instance.classId,
      'className': instance.className,
      'mentor': instance.mentor,
      'departmentId': instance.departmentId,
    };

_$_ClassList _$$_ClassListFromJson(Map<String, dynamic> json) => _$_ClassList(
      data: (json['data'] as List<dynamic>)
          .map((e) => Class.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ClassListToJson(_$_ClassList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getClassListHash() => r'2a297ca8067c7e48348c9c8c7c7d6ac187e7696c';

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

typedef GetClassListRef = AutoDisposeFutureProviderRef<List<Class>>;

/// See also [getClassList].
@ProviderFor(getClassList)
const getClassListProvider = GetClassListFamily();

/// See also [getClassList].
class GetClassListFamily extends Family<AsyncValue<List<Class>>> {
  /// See also [getClassList].
  const GetClassListFamily();

  /// See also [getClassList].
  GetClassListProvider call({
    int? departmentId,
  }) {
    return GetClassListProvider(
      departmentId: departmentId,
    );
  }

  @override
  GetClassListProvider getProviderOverride(
    covariant GetClassListProvider provider,
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
  String? get name => r'getClassListProvider';
}

/// See also [getClassList].
class GetClassListProvider extends AutoDisposeFutureProvider<List<Class>> {
  /// See also [getClassList].
  GetClassListProvider({
    this.departmentId,
  }) : super.internal(
          (ref) => getClassList(
            ref,
            departmentId: departmentId,
          ),
          from: getClassListProvider,
          name: r'getClassListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getClassListHash,
          dependencies: GetClassListFamily._dependencies,
          allTransitiveDependencies:
              GetClassListFamily._allTransitiveDependencies,
        );

  final int? departmentId;

  @override
  bool operator ==(Object other) {
    return other is GetClassListProvider && other.departmentId == departmentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, departmentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$selectedClassHash() => r'c31ebd0ae8e94240d7aeeeb69780a9c5f838b4af';

/// See also [SelectedClass].
@ProviderFor(SelectedClass)
final selectedClassProvider =
    AutoDisposeNotifierProvider<SelectedClass, Class?>.internal(
  SelectedClass.new,
  name: r'selectedClassProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedClassHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedClass = AutoDisposeNotifier<Class?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
