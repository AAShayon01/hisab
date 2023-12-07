import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constant.dart';

class Custom_TFormField extends StatelessWidget {
  final dynamic  nameofController;
  final dynamic yourFieldtext;
  final dynamic keyboardtype;
  final dynamic htext;
  const Custom_TFormField({
    super.key,
    required this.nameofController, required this.yourFieldtext, required this.keyboardtype,required this.htext,
  }) ;


  @ override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: 360.w,
      margin: EdgeInsets.only(left: 15.w,right: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$yourFieldtext',style: AppConst.appTFFstyle,),
          Padding(padding:EdgeInsets.only(top:14.55.h ),
            child: Container(
              width: 330.w,
              height: 42.h,
              decoration: BoxDecoration(
                color: AppConst.appTFFborderColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: keyboardtype,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: nameofController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppConst.appTFFborderColor,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText:' $htext ',
                  hintStyle:AppConst.appTFFHintstyle,
                ),
              ),
            ),)
        ],
      ),
    );
  }
}