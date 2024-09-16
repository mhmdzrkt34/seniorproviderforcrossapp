import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier{

  bool isloading=false;


  List<String>? posts;


  HomeViewModel(){


  }




  void disposeTrigger(){

  }

  void initStateTrigger(){



  }


  void invisibleTrigger(){


  }

  void setState(bool isLoadingg, List<String>? postss
){

  isloading=isLoadingg; 
  postss=postss;

  notifyListeners();
}


}