
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Model/LoginModel.dart';
import '../Repository/Repository.dart';
import '../Response/ApiResponse.dart';
import '../Utils/Routes/RoutesName.dart';
import '../Utils/Utils.dart';

class LoginViewModel extends GetConnect{

  final _repository = Repository();


  TextEditingController usernameController = TextEditingController();

  var responseData = ApiResponse.loading();
  setResponse(ApiResponse<LoginModel> response) {
    responseData = response ;
  }

  Future<void> getTokenApi(data) async {
    _repository.getTokenApi(data).then((value) {
      print("success");
      // print(value.to);
      setResponse(ApiResponse.completed(value));
      Utils.Toasts("successfully Login");
      Get.offNamed(RoutesName.home);
    }).onError((error, stackTrace) {
      print("failedd");
      print(error);
      Utils.Toasts("Login failed Because of username or password didn't match");
      setResponse(ApiResponse.error(error.toString()));
    });

    // Navigator.popAndPushNamed(context, Routes.homeScreen);
  }

}