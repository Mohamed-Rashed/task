

import 'package:dio/dio.dart';

class DrinkWebServices{
  late Dio dio;
  DrinkWebServices() {
    BaseOptions options = BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, // 20 seconds,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllDrinks() async {
    try {
      Response response =
      await dio.get('https://flutter-test-api.herokuapp.com/');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

}