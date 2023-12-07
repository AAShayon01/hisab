import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:hisab/view/screen/chart.dart';
import 'package:hisab/view/screen/note.dart';
import 'package:hisab/view/screen/profile.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: const Text('Total Hishab'),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10.h,
            left: 0.w,
            right: 0.w,
            child: Container(
              height: 125.h,
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w,top: 10.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 19.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Total Money Added',style: AppConst.appTextStyle,),
                              Text(' : ',style: AppConst.appTextStyle,),
                              Text(" totalmoney  ",style: AppConst.appTextStyle,),
                              Container(width: 1.w,color: Colors.blue,)
                            ],
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(top: 15.h),
                          child: SizedBox(
                            height: 19.h,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Total Money Added',style: AppConst.appTextStyle,),
                                Text(' : ',style: AppConst.appTextStyle,),
                                Text(" totalmoney  ",style: AppConst.appTextStyle,),
                                Container(width: 1.w,color: Colors.red,)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(top: 15.h),
                          child: SizedBox(
                            height: 19.h,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Total Money Added',style: AppConst.appTextStyle,),
                                Text(' : ',style: AppConst.appTextStyle,),
                                Text(" totalmoney  ",style: AppConst.appTextStyle,),
                                Container(width: 1.w,color: Colors.green,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          ),
          Positioned(
              left: 205.w,
              top: 114.h,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  height:42.h,width: 152.w,
                  child: ElevatedButton(onPressed: (){},
                      child:Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Create Wallet',style: AppConst.appButtonTextStyle,),
                          Padding(
                            padding: EdgeInsets.only(left:5.w),
                            child: Text('+',style: TextStyle(fontSize: 17.sp),),
                          )
                        ],

                      )))),
          Positioned(top: 185.h,child: Container(height:271.h,width: 390.w,color: Colors.blueGrey,
          child: Padding(
            padding: EdgeInsets.only(left:10.w,top: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Month Name',style:AppConst.appMonthNameTextStyle,),

                Padding(
                  padding: EdgeInsets.only(top:20.h),
                  child: Row(
                    children: [
                      Container(
                        height: 150.h,
                        child: Stack(
                          children: [
                            Image.asset('assets/icon/red circle.png',height: 100.h,width: 100.w,),
                            Positioned(
                                top: 45.h,left: 35.w,
                                child: Text('25000')
                            ),
                            Positioned(
                              left: 10,top:134,
                                child: Text('Money Added',style: AppConst.hisabTextStyle,)
                            ),
                            Positioned(
                              top: 150,left: 87,
                              child: Container(
                                width: 12.w,
                                height: 2.h,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:20.w),
                        child: SizedBox(
                          height: 150.h,
                          child: Stack(
                            children: [
                              Image.asset('assets/icon/red circle.png',height: 100.h,width: 100.w,),
                              Positioned(
                                  top: 45.h,left: 35.w,
                                  child: Text('25000')),
                              Positioned(top:114.h,left: 30.w,child: Text('Expanse',style: AppConst.hisabTextStyle,)),
                              Positioned(
                                top: 150,left: 77,
                                child: Container(
                                  width: 12.w,
                                  height: 2.h,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:20.w),
                        child: Container(
                          height: 150.h,
                          child: Stack(
                            children: [
                              Image.asset('assets/icon/red circle.png',height: 100.h,width: 100.w,),
                              Positioned(
                                  top: 45.h,left: 35.w,
                                  child: Text('25000')),
                              Positioned(top:114.h,left:0.w,child: Text('Available Balance',style: AppConst.hisabTextStyle,)),
                              Positioned(
                                top: 150,left: 101,
                                child: Container(
                                  width: 12.w,
                                  height: 2.h,
                                  color: Colors.green,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(left: 10.w),
                      child: InkWell(
                        child: Container(
                          height: 42.h,
                          width: 152.w,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color:Color(0xFF2B2F33),
                          ),
                          child: Center(
                            child: Text('View',style: AppConst.appButtonTextStyle,),
                          ),
                        ),
                        onTap: (){},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: InkWell(
                        child: Container(
                          height: 42.h,
                          width: 152.w,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin:  Alignment(0.71, -0.71),
                              end:  Alignment(-0.71, 0.71),
                              colors:  [Color(0xFF1B99D7), Color(0xFF2943A3)]
                            ),
                          ),
                          child: Center(
                            child: Text('Add Expanse +',style: AppConst.appButtonTextStyle,),
                          ),
                        ),
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => Profile() ));},
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),

          ))
        ],
      ),
    );
  }
}






