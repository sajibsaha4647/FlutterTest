

import 'package:flutter_interview/Repository/Repository.dart';
import 'package:get/get.dart';

import '../Response/ApiResponse.dart';

class DomainViewModel extends GetxController{

  final _repository = Repository();


  List<dynamic> _responseData = [].obs ;
  get responseData =>_responseData;

  // setResponse( response) {
  //   responseData.value = response;
  // }

  @override
  void onInit() {
    super.onInit();
    getDomainApi("");
  }

  Future<void> getDomainApi(data) async {
    _repository.getDomainApi(data).then((value) {
      // print(value.toJson());
      // _responseData.value = value ;
    }).onError((error, stackTrace) {
      print("error");
      print(error);
    });

    // Navigator.popAndPushNamed(context, Routes.homeScreen);
  }

}