import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../navigation/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final contextSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            width: contextSize.width,
            height: contextSize.height < 700 ? 700 : contextSize.height,
            child: SizedBox(
              width: contextSize.width > 350.0 ? 350.0 : 70.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Image.asset(
                      'assets/images/sari_cip.png',
                      width: 125.sp,
                      height: 125.sp,
                    ),
                  ),
                  Text(
                    'HELLO THERE,\nWELCOME BACK',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w900),
                  ),
                  Container(
                    width: 70.w,
                    margin: EdgeInsets.symmetric(vertical: 20.sp),
                    child: Row(
                      children: [
                        Text(
                          'Sign in to continue',
                          style: TextStyle(
                              fontSize: 8.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.sp),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6.sp)),
                    width: 70.w,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.black26)),
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7.5.sp),
                    padding: EdgeInsets.symmetric(horizontal: 8.sp),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6.sp)),
                    width: 70.w,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.black26)),
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.sp),
                    height: 25.sp,
                    width: 70.w,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.black)),
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.generalRoom);
                        },
                        child: const Text(
                          'Log In',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
