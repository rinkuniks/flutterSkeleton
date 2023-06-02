import 'dart:async';

import '../data/network/base_api_services.dart';
import '../data/network/network_api_services.dart';
import '../model/movies_model.dart';
import '../res/app_url.dart';


/// Created by Sawan Kumar on 12/05/23.


class HomeRepository {
  final BaseApiServices _baseApiServices = NetworkApiServices();

  Future<MoviesListModel> moviesApi() async {
    try {
      dynamic response =
          await _baseApiServices.getGetApiResponse(AppUrl.moviesListEndPoint);
      return response = MoviesListModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
