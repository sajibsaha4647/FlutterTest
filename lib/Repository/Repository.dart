
import 'package:flutter_interview/Model/DomainsModel.dart';

import '../Data/Network/BaseApiService.dart';
import '../Data/Network/NetworkApiService.dart';
import '../Resource/ApiUrls.dart';

class Repository {

  BaseApiservices baseApiServices = NetworkApiServiece();

  //domain api
  Future<DomainsModel>getDomainApi(data,context,header)async{
    print(data);
    try{
      dynamic response = await baseApiServices.getGetApiResponse('${AppUrls.DomainApi}',header);
      return response  = DomainsModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }

  //Account api
  Future<DomainsModel>getAccountApi(data,context)async{
    print(data);
    try{
      dynamic response = await baseApiServices.getPostApiResponse('${AppUrls.AccountApi}',data);
      return response  = DomainsModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }

  //Token api
  Future<DomainsModel>getTokenApi(data,context)async{
    print(data);
    try{
      dynamic response = await baseApiServices.getPostApiResponse('${AppUrls.TokenApi}',data);
      return response  = DomainsModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }

  //Token api
  Future<DomainsModel>getMessagesApi(data,context,header)async{
    print(data);
    try{
      dynamic response = await baseApiServices.getGetApiResponse('${AppUrls.MessagesApi}',header);
      return response  = DomainsModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }


}