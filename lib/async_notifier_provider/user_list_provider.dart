import 'package:flutter_riverpod_example/async_notifier_provider/api_respository.dart';
import 'package:flutter_riverpod_example/async_notifier_provider/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_list_provider.g.dart';

@riverpod
class UserList extends _$UserList {
  @override
  FutureOr<List<UserModel>> build() async {
    return await ApiRepository().getUsers();
  }
}
