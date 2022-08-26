
import 'package:flutter_interview/Model/DomainsModel.dart';
import 'package:flutter_interview/Model/LoginModel.dart';
import 'package:flutter_interview/Model/RegistrationModel.dart';

import '../Data/Network/BaseApiService.dart';
import '../Data/Network/NetworkApiService.dart';
import '../Resource/ApiUrls.dart';

class Repository {

  BaseApiservices baseApiServices = NetworkApiServiece();

  //domain api
  Future<DomainsModel>getDomainApi(header)async{

    try{
      dynamic response = await baseApiServices.getGetApiResponse('${AppUrls.DomainApi}',header);
      print("repository.toString() ********************");
      print(response.toString());
      return response  = DomainsModel.fromJson(response[0]);
    }catch(e){
      throw e;
    }
  }

  //Account api
  Future<RegistrationModel>getAccountApi(data)async{
    print(data);
    try{
      dynamic response = await baseApiServices.getPostApiResponse('${AppUrls.AccountApi}',data);
      print("response here check");
      print(response);
      return response  = RegistrationModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }

  //Token api
  Future<LoginModel>getTokenApi(data)async{
    print(data);
    try{
      dynamic response = await baseApiServices.getPostApiResponse('${AppUrls.TokenApi}',data);
      return response  = LoginModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }

  //messages api
  Future getMessagesApi(header)async{
    try{
      dynamic response = await baseApiServices.getGetApiResponse('${AppUrls.MessagesApi}',header);
      print("response");
      print(response);
     return response ;


    }catch(e){
      throw e;
    }
  }


}