import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../ExceptionHandle.dart';
import 'BaseApiService.dart';
class NetworkApiServiece extends BaseApiservices{

  String connectionNetwork = "No internet connection" ;

  //here i get Get response
  @override
  Future getGetApiResponse(String url) async {

    dynamic responseJson ;
    try {

      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException {

      throw FetchDataException('No Internet Connection');
    }

    return responseJson;

  }

  //here i get post response
  @override
  Future getPostApiResponse(String url, dynamic data)async {
    dynamic responseJson ;
    try{
      Response response = await post(
        Uri.parse(url),
        // headers: header,
        body:data,
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response) ;

    }on SocketException{
      throw FetchDataException("$connectionNetwork !");
    }

    return responseJson ;
  }

  dynamic returnResponse(http.Response response){

    switch(response.statusCode){
      case 200:
        dynamic responsJson = convert.jsonDecode(response.body) ;
        return responsJson ;
      case 400:
        throw BadRequestExceptoin(response.body.toString());
      case 500:
        throw BadRequestExceptoin(response.body.toString());
      case 404:
        throw UnauthorisedExceptoin(response.body.toString());
      default:
        throw FetchDataException("Error accored while communicat with server !" + "with status code" + response.statusCode.toString());
    }

  }

}