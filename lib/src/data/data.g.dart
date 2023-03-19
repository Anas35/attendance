// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      type: $enumDecode(_$UserTypeEnumMap, json['type']),
      token: json['token'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'type': _$UserTypeEnumMap[instance.type]!,
      'token': instance.token,
      'id': instance.id,
    };

const _$UserTypeEnumMap = {
  UserType.student: 'student',
  UserType.teacher: 'teacher',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dataStateHash() => r'8813983d7019e5233c7ac8b803fff4990bff815f';

/// See also [DataState].
@ProviderFor(DataState)
final dataStateProvider = NotifierProvider<DataState, Data?>.internal(
  DataState.new,
  name: r'dataStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dataStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DataState = Notifier<Data?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
