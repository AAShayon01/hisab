import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:hisab/view/widgets/aDDExpanse.dart';
import 'package:hisab/view/widgets/circularProgressIndicator.dart';
import 'package:hisab/view/widgets/viewDetails.dart';
import 'package:provider/provider.dart';
import '../../provider/expanseProvider.dart';
import '../widgets/custom_text_from_field.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppConst.appTFFBorderColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppConst.appBackgroundColor,
        title: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child:Text('Total Hishab',style: AppConst.appTextStyle,),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 150.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0,left: 0,right: 0,
                  child: Container(
                    height: 125.h,
                    decoration:const BoxDecoration(
                        color: Color(0xFF141313),
                    ) ,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.w,top: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 19.h,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    width: 148.w,
                                    child: Text('Total Money Added',style: AppConst.appTextStyle,)),
                                Text(' : ',style: AppConst.appTextStyle,),
                                Text(" 20000 ",style: AppConst.appTextStyle,),
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
                                  Container(
                                      width:148.w,child: Text('Total Expanse',style: AppConst.appTextStyle,)),
                                  Text(' : ',style: AppConst.appTextStyle,),
                                  Text(" 10000  ",style: AppConst.appTextStyle,),
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
                                  Container(
                                      width: 148.w,
                                      child: Text('Available Balance',style: AppConst.appTextStyle,)),
                                  Text(' : ',style: AppConst.appTextStyle,),
                                  Text(" 10000  ",style: AppConst.appTextStyle,),
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
                  left: 200.w,
                  top: 105.h,
                  child: InkWell(
                    onTap: (){
                      // showModalBottomSheet<void>(
                      //   context: context,
                      //   builder: (BuildContext context) {
                      //     return SingleChildScrollView(
                      //       child: Padding(
                      //         padding: EdgeInsets.only(
                      //             bottom: MediaQuery.of(context).viewInsets.bottom + 50.h),
                          //    child: CreateWallet(),
                      //       ),
                      //     );
                      //   },
                      // );
                      _showAddMoneyBottomSheet(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient:const LinearGradient(
                              begin:  Alignment(0.71, -0.71),
                              end:  Alignment(-0.71, 0.71),
                              colors:  [Color(0xFF1B99D7), Color(0xFF2943A3)]
                          ),
                        ),
                        height:42.h,width: 152.w,
                        child: Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Create Wallet',style: AppConst.appButtonTextStyle,),
                            Padding(
                              padding: EdgeInsets.only(left:5.w),
                              child: Text('+',style: TextStyle(fontSize: 17.sp),),
                            )
                          ],

                        )),
                  ),)
              ],
            ),
          ),
          // Positioned(
          //   top: 0.h,
          //   left: 0.w,
          //   right: 0.w,
          //   child: Container(
          //     height: 125.h,
          //         decoration:BoxDecoration(
          //           color: AppConst.appBackgroundColor,
          //          borderRadius: BorderRadius.only(
          //            bottomLeft: Radius.circular(9),
          //            bottomRight: Radius.circular(9),
          //          )
          //         ) ,
          //         child: Padding(
          //           padding: EdgeInsets.only(left: 15.w,top: 10.h),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Container(
          //                 height: 19.h,
          //                 child: Row(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                   children: [
          //                     Container(
          //                         width: 148.w,
          //                         child: Text('Total Money Added',style: AppConst.appTextStyle,)),
          //                     Text(' : ',style: AppConst.appTextStyle,),
          //                     Text(" 20000 ",style: AppConst.appTextStyle,),
          //                     Container(width: 1.w,color: Colors.blue,)
          //                   ],
          //                 ),
          //               ),
          //               Padding(
          //                 padding:EdgeInsets.only(top: 15.h),
          //                 child: SizedBox(
          //                   height: 19.h,
          //                   child: Row(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     children: [
          //                       Container(
          //                           width:148.w,child: Text('Total Expanse',style: AppConst.appTextStyle,)),
          //                       Text(' : ',style: AppConst.appTextStyle,),
          //                       Text(" 10000  ",style: AppConst.appTextStyle,),
          //                       Container(width: 1.w,color: Colors.red,)
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //               Padding(
          //                 padding:EdgeInsets.only(top: 15.h),
          //                 child: SizedBox(
          //                   height: 19.h,
          //                   child: Row(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     children: [
          //                       Container(
          //                           width: 148.w,
          //                           child: Text('Available Balance',style: AppConst.appTextStyle,)),
          //                       Text(' : ',style: AppConst.appTextStyle,),
          //                       Text(" 10000  ",style: AppConst.appTextStyle,),
          //                       Container(width: 1.w,color: Colors.green,)
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          // ),
          // Positioned(
          //     left: 200.w,
          //     top: 114.h,
          //     child: InkWell(
          //       onTap: (){
          //         showModalBottomSheet<void>(
          //           context: context,
          //           builder: (BuildContext context) {
          //             return SingleChildScrollView(
          //               child: Padding(
          //                   padding: EdgeInsets.only(
          //                       bottom: MediaQuery.of(context).viewInsets.bottom + 50.h),
          //                 child: CreateWallet(),
          //               ),
          //             );
          //           },
          //         );
          //       },
          //       child: Container(
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(5),
          //             gradient:const LinearGradient(
          //                 begin:  Alignment(0.71, -0.71),
          //                 end:  Alignment(-0.71, 0.71),
          //                 colors:  [Color(0xFF1B99D7), Color(0xFF2943A3)]
          //             ),
          //           ),
          //           height:42.h,width: 152.w,
          //           child: Row( mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Text('Create Wallet',style: AppConst.appButtonTextStyle,),
          //               Padding(
          //                 padding: EdgeInsets.only(left:5.w),
          //                 child: Text('+',style: TextStyle(fontSize: 17.sp),),
          //               )
          //             ],
          //
          //           )),
          //     )),
          ///neddedddddddd
          Padding(
            padding: EdgeInsets.only(top:30.h),
            child: Container(height:271.h,width: 390.w,color: AppConst.appTFFBorderColor,
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
                      Padding(
                        padding:EdgeInsets.only(left: 0.w),
                        child: RingProgressWidget(addMoney: 10000,color:Colors.blueAccent),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: 20.w),
                        child:RingProgressWidget(addMoney: 5000,color:Colors.redAccent),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: 20.w),
                        child:RingProgressWidget(addMoney: 5000,color:Colors.greenAccent),
                      ),

                    ],
                  ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.h),
              child:Row(
                children: [
                  Text('Monthly Added',style: AppConst.hisabTextStyle, ),
                  Padding(
                    padding:EdgeInsets.only(left: 45.w),
                    child: Text('Expanse',style: AppConst.hisabTextStyle, ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left: 30.w),
                    child: Text('Available Balance',style: AppConst.hisabTextStyle, ),
                  ),
                ],
              ) ,
              ),
              Padding(padding: EdgeInsets.only(top: 1.h),
              child: Row(
                children: [
                Padding(
                  padding: EdgeInsets.only(left:82.w),
                  child: Container(
                            width: 15.w,
                            height: 2.h,
                            color: Colors.blue,
                          ),
                ),  Padding(
                    padding: EdgeInsets.only(left:84.w),
                    child: Container(
                      width: 15.w,
                      height: 2.h,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:127.w),
                    child: Container(
                      width: 15.w,
                      height: 2.h,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
              ),


              Padding(
                padding: EdgeInsets.only(top: 27.h),
                child: Row(
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
                            border: Border.all(width: 1,color: Colors.blue)
                          ),
                          child: Center(
                            child: Text('View',style: AppConst.appButtonTextStyle,),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpanseDetails()));
                        },
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
                        onTap: (){  showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).viewInsets.bottom ),
                                child: AddExpanse(),
                              ),
                            );
                          },
                        );},
                      ),
                    ),

                  ],
                ),
              )
            ],
                        ),
                      ),

                      ),
          )
        ],
      ),
    );
  }
  void _showAddMoneyBottomSheet(BuildContext context) {

    final ep= Provider.of<ExpenseProvider>(context,listen: false);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child:Container(
            width: 360.w,
            height: 500.h,
            decoration: BoxDecoration(
              color:const Color(0xFF212427),
              borderRadius: BorderRadius.circular(20),
              border:const Border(
                left: BorderSide(color: Color(0xFF454C54)),
                top: BorderSide(width: 1, color: Color(0xFF454C54)),
                right: BorderSide(color: Color(0xFF454C54)),
                bottom: BorderSide(color: Color(0xFF454C54)),
              ),
              boxShadow:const [
                BoxShadow(
                  color: Color(0x261B98D6),
                  blurRadius: 30,
                  offset: Offset(0, -2),
                  spreadRadius: 1,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,

              children: [
                Padding(
                  padding:EdgeInsets.only(top:30.h,),
                  child: Center(child: Text('Create Wallet',style: AppConst.appCreateWallet,)),
                ),
                Padding(
                  padding:EdgeInsets.only(top: 30.h),
                  child: CustomTextFormField(nameOfController: ep.categoryName, yourFieldText: 'Category Name', keyBoardType: TextInputType.name, hintText: 'Write Your Category'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: CustomTextFormField(nameOfController: ep.addBalance, yourFieldText: 'Add Balance', keyBoardType: TextInputType.number, hintText: 'Add Balance'),
                ),
                Padding(padding: EdgeInsets.only(top: 50.h,left:15.w,right: 15.w ),
                  child:InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 42.h,
                      width: 330.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient:const LinearGradient(
                            begin: Alignment(1.00, 0.00),
                            end: Alignment(-1, 0),
                            colors: [Color(0xFF1B9CD9), Color(0xFF2A41A2)],
                          )
                      ),
                      child: Center(child: Text('Create',style: AppConst.appButtonTextStyle,)),
                    ),
                  ) ,)
              ],
            ),
          )

            // Column(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     TextField(
            //       controller: amountController,
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(labelText: 'Enter amount'),
            //     ),
            //     SizedBox(height: 16),
            //     ElevatedButton(
            //       onPressed: () {
            //         if (amountController.text.isNotEmpty) {
            //           double amount = double.parse(amountController.text);
            //           Provider.of<ExpenseModel>(context, listen: false).addMoney(amount);
            //           Navigator.pop(context); // Close the bottom sheet
            //           _showSuccessSnackbar(context, 'Money added successfully');
            //         }
            //       },
            //       child: Text('Add'),
            //     ),
            //   ],
            // ),
          ),
        );
      },
    );
  }
  void _showSuccessSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    ));
  }
}





