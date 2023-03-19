import 'dart:io';

import 'package:attendance/src/repository.dart';
import 'package:attendance/src/data/data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication.g.dart';

@riverpod
class Authentication extends _$Authentication {

  @override
  Future<bool> build() async {
    return false;
  }

  Future<void> register(UserType type, Map<String, String> formData, File file) async {
    state = const AsyncLoading();

    final repository = ref.watch(repositoryProvider);
    
    state = await AsyncValue.guard<bool>(() async {
      final data = await repository.register(formData, file, type);
      ref.read(dataStateProvider.notifier).update(data);
      return true;
    });
  }

  Future<void> login(Map<String, Object> input, UserType type) async {
    state = const AsyncLoading();

    final repository = ref.watch(repositoryProvider);
    
    state = await AsyncValue.guard<bool>(() async {
      final data = await repository.login(input, type);
      ref.read(dataStateProvider.notifier).update(data);
      return true;
    });
  }
}