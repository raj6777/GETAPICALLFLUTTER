import 'dart:developer';

import 'package:apicall/model/UserModel.dart';
import 'package:apicall/network/Constants.dart';
import 'package:http/http.dart' as http;


class ApiService{
  Future< UserModel?> getUser() async{
  try{
    var url=Uri.parse(Constants.baseurl+Constants.endpoint);
    var response=await http.get(url);
    if(response.statusCode==200){
      UserModel _usermodel=userModelFromJson(response.body.toString());
      return _usermodel;
    }
  }
  catch(e){
    log(e.toString());
  }
  }
}
