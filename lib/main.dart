import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/view/screen/Login.dart';
void main(){
  runApp(Myapp());

}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(360,800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context ,child){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Login_Page(),
        );
      },
    );
  }
}
