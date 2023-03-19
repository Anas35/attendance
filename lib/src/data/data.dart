import 'dart:convert';

import 'package:attendance/src/preference/preference.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

enum UserType {
  student,
  teacher;

  String get formattedName {
    return name[0].toUpperCase() + name.substring(1).toLowerCase();
  }
}

@Riverpod(keepAlive: true)
class DataState extends _$DataState {

  @override
  Data? build() {
    final pref = ref.watch(sharedPreferencesProvider);

    ref.listenSelf((previous, next) async {
      if (next != null) {
        await pref.setString('data', jsonEncode(next));
      }
    });

    final type = pref.getString('data');
    if (type != null) {
      return Data.fromJson(jsonDecode(type));
    }

    return null;
  }

  Future<void> update(Data data) async {
    state = data;
  }

  Future<void> clear() async {
    final pref = ref.watch(sharedPreferencesProvider);
    pref.clear();
  }

}

@freezed
class Data with _$Data {

  factory Data({
    required UserType type,
    required String token,
    required String id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}
