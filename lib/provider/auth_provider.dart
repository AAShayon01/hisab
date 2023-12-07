import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthProvider extends ChangeNotifier{
  String _email='';
  String _password='';
  String get email=>_email;
  String get password=>_password;
  // set email(String value){
  //   _email=value;
  //   notifyListeners();
  // }

  void setEmail(String email){
    _email=email;
    notifyListeners();

  }

void setPassword(String password){
    
    _password=password;
    notifyListeners();
}

 bool isEmailValid(){
   RegExp regex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
   return regex.hasMatch(_email);
 }
 bool isPasswordValid(){
   RegExp regex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
   return regex.hasMatch(_password);

 }


}

