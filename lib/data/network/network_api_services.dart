/// Created by Sawan Kumar on 12/05/23.
// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:mvvm/data/app_exceptions.dart';
import 'package:mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

import '../../utils/utils.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);

    } on SocketException {
      Utils.toastMessage('no internet connection');
      throw FetchDataException('No nternet Connection');
    }
    log("API RESPONSE====>>  $responseJson");
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      http.Response response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      Utils.toastMessage('no internet connection');
      throw FetchDataException('no internet connection');
    }
    log("API RESPONSE====>>  $responseJson");
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequentException(response.body.toString());
      case 500:
      case 404:
        throw Unauthorisedexception(response.body.toString());
      default:
        throw FetchDataException(
            'error accurred while communicating with server with status code' +
                response.statusCode.toString());
    }
  }
}
