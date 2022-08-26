
import 'package:flutter_interview/Model/RegistrationModel.dart';
import 'package:flutter_interview/Utils/Routes/RoutesName.dart';
import 'package:flutter_interview/Utils/Utils.dart';
import 'package:get/get.dart';

import '../Repository/Repository.dart';
import '../Response/ApiResponse.dart';

class RegistrationViewModel extends GetConnect{

  final _repository = Repository();


  var responseData = ApiResponse.loading();
  setResponse(ApiResponse<RegistrationModel> response) {
    responseData = response ;
  }

  Future<void> getAccountApi(data) async {
    _repository.getAccountApi(data).then((value) {
      print("success");
      // print(value.to);
      setResponse(ApiResponse.completed(value));
      Utils.Toasts("Account successfully created");
      Get.offNamed(RoutesName.login);
    }).onError((error, stackTrace) {
      print("failed");
      print(error);
      Utils.Toasts("Not created Because of username already exist or you made a mistake here");
      setResponse(ApiResponse.error(error.toString()));
    });

    // Navigator.popAndPushNamed(context, Routes.homeScreen);
  }



}