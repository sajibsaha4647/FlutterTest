import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../ExceptionHandle.dart';
import 'BaseApiService.dart';

class NetworkApiServiece extends BaseApiservices {
  String connectionNetwork = "No internet connection";

  //here i get Get response
  @override
  Future getGetApiResponse(String url, header) async {
    dynamic responseJson;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer ${header}"
        },
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  //here i get post response
  @override
  Future getPostApiResponse(String url, dynamic data) async {
    print("url : ++++++" + url);
    print("data+++++++++++" + data);
    dynamic responseJson;
    final encoding = Encoding.getByName('utf-8');
    try {
      Response response = await post(Uri.parse(url),
              headers: {
                "Content-Type": "application/json",
                "Accept": "application/json",
              },
              body: data,
              )
          .timeout(const Duration(seconds: 10));
      print(response.statusCode);
      print(response.body);
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("$connectionNetwork !");
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {

    switch (response.statusCode) {
      case 200:
        dynamic responsJson = convert.jsonDecode(response.body);
        return responsJson;
      case 201:
        dynamic responsJson = convert.jsonDecode(response.body);
        return responsJson;
      case 400:
        throw BadRequestExceptoin(response.body.toString());
      case 500:
        throw BadRequestExceptoin(response.body.toString());
      case 404:
        throw UnauthorisedExceptoin(response.body.toString());
      default:
        throw FetchDataException(
            "Error accored while communicat with server !" +
                "with status code" +
                response.statusCode.toString());
    }
  }
}
