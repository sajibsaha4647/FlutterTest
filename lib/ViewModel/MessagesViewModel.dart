
import 'package:flutter_interview/ViewModel/LoginViewModel.dart';
import 'package:get/get.dart';

import '../Repository/Repository.dart';
import '../Response/ApiResponse.dart';
import '../Utils/Utils.dart';

class MessagesViewModel extends GetxController{

  final _repository = Repository();

   final loading = false.obs;
   final nodata = false.obs;




  var responseData = ApiResponse.loading();
  setResponse(response) {
    responseData = response;
  }



  Future<void> getMessagesApi(data) async {
    loading.value = true;
    _repository.getMessagesApi(data).then((value) {
     if(value.length == 0){
       print("failed");
       loading.value = false;
       nodata.value = false;
       Utils.Toasts("No data found");
     }else{
       loading.value = false;
       nodata.value = true;
       print("success");
       setResponse(ApiResponse.completed(value));
     }
    }).onError((error, stackTrace) {
      loading.value = false;
      nodata.value = false;
      print(error);
      Utils.Toasts("No data found");
      setResponse(ApiResponse.error(error.toString()));

    });

    // Navigator.popAndPushNamed(context, Routes.homeScreen);
  }

}