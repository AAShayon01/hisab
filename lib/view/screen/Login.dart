import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:hisab/view/widgets/app_header.dart';
import 'package:hisab/view/widgets/divider.dart';

import '../widgets/custom_text_from_field.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final _formKey1 = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppConst.appbackgroundColor ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top:100.h,left:64.4.w ),
              child: Container(
                height: 101.h,
                width: 270.w,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    App_Header(),
                    Padding(
                      padding: EdgeInsets.only(left:0.w),
                      child: Image.asset("assets/icon/divider.png",width: 202.w,height: 3.7.h,),
                    ),


                  ],
                ),
              ),
            ),
            Form(
              key: _formKey1,
              child: Padding(
                padding: EdgeInsets.only(top:100.h ),
                child:
                //Custom_TFormField(emailController: _emailController),
                Column(
                  children: [
                    Custom_TFormField(nameofController: _emailController,
                        yourFieldtext:'Email',
                        keyboardtype: TextInputType.emailAddress,
                        htext:'Enter Your Email',
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 30.h),
                      child: Custom_TFormField(
                          nameofController: _passWordController,
                          yourFieldtext: 'Password',
                          keyboardtype:TextInputType.visiblePassword,
                          htext:'Enter your Password'
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50.h),
                      child: SizedBox(
                        width: 330.w,height: 42.h,
                        child: ElevatedButton(onPressed: (){},
                            child: Text('Submit',style:AppConst.appTFFstyle),
                      ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
           Padding(
             padding: EdgeInsets.only(top: 60.h,right: 28.w,left: 29.w),
             child: const AppDivider(dividerText: 'Or'),
           ),
            Padding(padding: EdgeInsets.only(top:50.h ),

            child: InkWell(
              child: Container(
                width: 330.w,height: 42.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF2B2F33),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icon/google.png',height: 24.h,width: 24.w,),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Text("Login with Google",style: AppConst.appTFFHintstyle,),
                    )
                  ],
                ),
              ),
              onTap: (){},
            ),
            )
          ],
        ),
      ),
    );
  }
}




