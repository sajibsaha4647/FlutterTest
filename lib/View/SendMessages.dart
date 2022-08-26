
import 'package:flutter/material.dart';
import 'package:flutter_interview/ViewModel/MessagesViewModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SendMessages extends StatefulWidget {
  const SendMessages({Key? key}) : super(key: key);

  @override
  State<SendMessages> createState() => _SendMessagesState();
}

class _SendMessagesState extends State<SendMessages> {

  TextEditingController _toController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();

  final  sendmessageViewModel = Get.find<MessagesViewModel>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Compose email"),
      ),
      body: Padding(
        padding:EdgeInsets.only(left: 15.w,right: 15.w,top: 15.h,bottom: 15.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                    height: 70.h,
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextField(
                      onTap: () {},
                      textAlign: TextAlign.start,
                      controller: _toController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "To",
                        alignLabelWithHint: true,
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xFF414041),
                        ),
                      ),
                    ),
                  ),
              SizedBox(height: 20.h,),
              Container(
                height: 70.h,
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  onTap: () {},
                  textAlign: TextAlign.start,
                  controller: _subjectController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Subject",
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xFF414041),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 200.h,
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  onTap: () {},
                  maxLines: null,
                  textAlign: TextAlign.start,
                  controller: _bodyController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email body",
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xFF414041),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20.r)
                  ),
                  child: Text("Send",style: TextStyle(color: Colors.white),),
                ),
              ),

            ],
          ),
        ),
      ),

    ));
  }
}

