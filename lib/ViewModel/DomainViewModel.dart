

import 'package:flutter_interview/Model/DomainsModel.dart';
import 'package:flutter_interview/Repository/Repository.dart';
import 'package:get/get.dart';

import '../Response/ApiResponse.dart';

class DomainViewModel extends GetConnect{

  final _repository = Repository();


  var responseData = ApiResponse.loading();
   setResponse(ApiResponse<DomainsModel> response) {
    responseData = response ;
  }

  @override
  void onInit() {
    super.onInit();
    getDomainApi("");
  }

  Future<void> getDomainApi(data) async {
    _repository.getDomainApi(data).then((value) {
      print("success");
      // print(value.to);
      setResponse(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      print("failed");
      print(error);
      setResponse(ApiResponse.error(error.toString()));
    });

    // Navigator.popAndPushNamed(context, Routes.homeScreen);
  }

}