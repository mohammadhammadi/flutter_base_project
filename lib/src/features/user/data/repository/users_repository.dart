import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/networking/dio_exception.dart';
import '../api/user_api.dart';
import '../models/user_model.dart';

class UserRepository {
  final UserApi _userApi;

  UserRepository(this._userApi);

  Future<List<UserModel>> fetchUsers({
    int page = 1,
  }) async {
    try {
      final queryParams = {
        'page': page,
        'per_page': 10,
      };
      final response = await _userApi.fetchUsers(queryParameters: queryParams);
      List<UserModel> usersList = [];
      for (Map<String, dynamic> item in response.data['data']) {
        usersList.add(UserModel.fromJson(item));
      }
      return usersList;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }

  Future<void> deleteUser({
    required int id,
  }) async {
    try {
      await _userApi.deleteUser(id: id);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }

  /*Future<UserModel> addUser() async {
    try {
      final response = await _userApi.fetchUsers();
      List<UserModel> usersList = [];
      for (Map<String, dynamic> item in response['data']) {
        usersList.add(UserModel.fromJson(item));
      }
      return usersList;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }*/
}

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(ref.read(userApiProvider));
});
