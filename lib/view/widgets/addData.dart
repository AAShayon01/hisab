import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../provider/expanseProvider.dart';
import '../../utils/app_constant.dart';
import 'custom_text_from_field.dart';
class DataDialogue extends ChangeNotifier{

  void  showSuccessSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    ));
    notifyListeners();
  }


  void showAddMoneyBottomSheet(BuildContext context) {

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
                            ep.addBalance;
                          showSuccessSnackbar(context, 'SuccessFully You Create Your Balance');
                          Navigator.pop(context);
                          ep.categoryName.clear();
                          ep.addBalance.clear();
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

}