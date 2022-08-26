import 'package:flutter/material.dart';
import 'package:flutter_interview/Utils/Routes/RoutesName.dart';
import 'package:flutter_interview/ViewModel/MessagesViewModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MessageList extends StatefulWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {

  final  messageViewModel = Get.find<MessagesViewModel>();


  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:Text("MessageList"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w, bottom: 15.h),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.sendmessage);
                },
                child: Row(
                  children: [
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
                        child: Text("Compose",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h,),

              Expanded(
                child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 5,
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Email :sajib@gmail.com"),
                                  ),
                                  SizedBox(height: 15.h,),
                                  Container(
                                    alignment: Alignment.topLeft,
                                   child: Text("Subject :sdfsdfsdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"),
                                  )
                                ],
                              ),
                          ),
                      );
                    }),
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
