import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:providerassenior/view_models/HomeViewModel/home_desktop_view_model.dart';

class HomeDesktopView  extends StatefulWidget {




  @override
  State<StatefulWidget> createState() {

    return HomeDesktopViewState();

  }
}

class HomeDesktopViewState extends State<HomeDesktopView> {


  @override
  Widget build(BuildContext context) {



    return MultiProvider(providers: [ChangeNotifierProvider.value(value: GetIt.instance.get<HomeDesktopViewModel>())],
    child:     Scaffold(

      appBar: AppBar(title: Text("desktop"),),
    ),) ;
    


  }
}