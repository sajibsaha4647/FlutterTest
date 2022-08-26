
import 'package:flutter_interview/ViewModel/DomainViewModel.dart';
import 'package:flutter_interview/ViewModel/LoginViewModel.dart';
import 'package:flutter_interview/ViewModel/MessagesViewModel.dart';
import 'package:flutter_interview/ViewModel/RegistrationViewModel.dart';
import 'package:get/get.dart';

import 'SharePrefViewModel.dart';

class ViewModelBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<DomainViewModel>(DomainViewModel());
    Get.put<LoginViewModel>(LoginViewModel());
    Get.put<MessagesViewModel>(MessagesViewModel());
    Get.put<RegistrationViewModel>(RegistrationViewModel());
    Get.put<SharePrefViewModel>(SharePrefViewModel());
  }




}