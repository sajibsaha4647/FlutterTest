import 'package:flutter/material.dart';
import 'package:flutter_interview/Utils/Routes/RoutesName.dart';
import 'package:flutter_interview/ViewModel/MessagesViewModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Response/Status.dart';
import '../ViewModel/LoginViewModel.dart';

class MessageList extends StatefulWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {

  final  messageViewModel = Get.find<MessagesViewModel>();
  final  loginViewModel = Get.find<LoginViewModel>();
  
  @override
  void initState() {
    messageViewModel.getMessagesApi(loginViewModel.responseData.data.token);
    super.initState();
  }

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  GlobalKey<RefreshIndicatorState>();

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      messageViewModel.getMessagesApi(loginViewModel.responseData.data.token);
    });

  }

  @override
  Widget build(BuildContext context) {



    return RefreshIndicator(
      onRefresh: _refresh,
      key: _refreshIndicatorKey,
      child: SafeArea(child: Scaffold(
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
              children: [ Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, RoutesName.sendmessage);
                          },
                          child: Card(
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
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          _refresh();
                        },
                        child: Card(
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
                            child: Text("Refresh",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                SizedBox(height: 25.h,),

                Expanded(
                  child:Container(
                    child: Obx((){
                     return Container(
                       child:  (((){
                         if(messageViewModel.loading == true){
                           return Center(
                             child: CircularProgressIndicator(),
                           );
                         }else if(messageViewModel.loading == false && messageViewModel.nodata == true){
                           return ListView.builder(
                               itemCount: messageViewModel.responseData.data.length,
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
                                           child: Text("Email :${messageViewModel.responseData.data[index]['from']['address']}"),
                                         ),
                                         SizedBox(height: 15.h,),
                                         Container(
                                           alignment: Alignment.topLeft,
                                           child: Text("Subject :${messageViewModel.responseData.data[index]['subject']}"),
                                         ),
                                         SizedBox(height: 15.h,),
                                         Container(
                                           alignment: Alignment.topLeft,
                                           child: Text("intro :${messageViewModel.responseData.data[index]['intro']}"),
                                         )
                                       ],
                                     ),
                                   ),
                                 );
                               });
                         }else if(messageViewModel.loading == false && messageViewModel.nodata == false){
                           return Center(
                             child: Text("No Messages Found !"),
                           );
                         }
                       })()) ,
                     );
                    })


                  )
                ),

              ],
            ),
          ),
        ),
      )),
    );
  }
}
