import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:providerassenior/view_models/HomeViewModel/home_mobile_view_model.dart';

class HomeMobileView extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {


    return HomeMobileViewState();

  }
}

class HomeMobileViewState extends State<HomeMobileView> {


  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [ChangeNotifierProvider.value(value: GetIt.instance.get<HomeMobileViewModel>())],
    
    child: Scaffold(appBar:  AppBar(title: Text("Mobile"),)),);

  }
}