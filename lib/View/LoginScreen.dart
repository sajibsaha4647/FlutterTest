import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interview/Utils/Routes/RoutesName.dart';
import 'package:flutter_interview/ViewModel/DomainViewModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Resource/Components/RoundButton.dart';
import '../Utils/Routes/Routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  final  domainViewModel = Get.find<DomainViewModel>();


  @override
  void initState() {
    print('domainViewModel.responseData.data');
    print(domainViewModel.responseData.data.domain);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
          padding:
              EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w, bottom: 15.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hellow !",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                  color: Colors.red,
                ),
              ),
              Text("Welcome Back",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 30.sp)),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextField(
                      onTap: () {},
                      textAlign: TextAlign.start,
                      controller: _usernameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter username",
                        alignLabelWithHint: true,
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xFF414041),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextField(
                      onTap: () {},
                      obscureText: _obscureText,
                      textAlign: TextAlign.start,
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: _obscureText == true
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = false;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  size: 20.w,
                                  color: Colors.black,
                                ))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = true;
                                  });
                                },
                                icon: Icon(
                                  Icons.visibility_off,
                                  size: 20.w,
                                  color: Colors.black,
                                )),
                        border: InputBorder.none,
                        hintText: "Password",
                        alignLabelWithHint: true,
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xFF414041),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              customButton(
                "Sign In",
                () {
                  Navigator.pushReplacementNamed(context, RoutesName.home);
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an account",
                      style: TextStyle(fontSize: 18.sp, color: Colors.black),
                      children: [
                    TextSpan(
                      text: " ?Signup",
                      style: TextStyle(fontSize: 18.sp, color: Colors.red),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.pushNamed(context, RoutesName.signup);
                      },
                    )
                  ])),
            ],
          ),
        ),
      ),
    ));
  }
}
