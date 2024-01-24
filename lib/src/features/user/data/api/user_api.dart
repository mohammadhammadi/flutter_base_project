import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/networking/dio_client.dart';

class UserApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  UserApi(this._dioClient);

  Future<dynamic> fetchUsers({
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await _dioClient.get(
        '/users',
        queryParameters: queryParameters,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> deleteUser({
    required int id,
  }) async {
    try {
      return await _dioClient.delete(
        '/users/$id',
      );
    } catch (e) {
      rethrow;
    }
  }
}

final userApiProvider = Provider<UserApi>((ref) {
  return UserApi(ref.read(dioClientProvider));
});
