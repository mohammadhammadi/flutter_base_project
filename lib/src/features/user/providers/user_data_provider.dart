import 'package:flutter_base_project/src/features/user/data/repository/users_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/user_model.dart';

part 'user_data_provider.g.dart';

@riverpod
class UsersList extends _$UsersList {
  @override
  Future<List<UserModel>> build() async {
    final repo = ref.watch(userRepositoryProvider);
    return await repo.fetchUsers();
  }

  Future<void> deleteUser({
    required int id,
  }) async {
    final repo = ref.watch(userRepositoryProvider);
    await repo.deleteUser(id: id);
    // We can then manually update the local cache. For this, we'll need to
    // obtain the previous state.
    // Caution: The previous state may still be loading or in error state.
    // A graceful way of handling this would be to read `this.future` instead
    // of `this.state`, which would enable awaiting the loading state, and
    // throw an error if the state is in error state.
    final previousState = await future;
    state = AsyncData(
      previousState.where((element) => element.id != id).toList(),
    );
  }

  //Future<UserModel> addUser(UserModel userModel) async {}
}
