import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:providerassenior/view_models/HomeViewModel/home_view_model.dart';
import 'package:providerassenior/views/HomeView/home_desktop_view.dart';
import 'package:providerassenior/views/HomeView/home_mobile_view.dart';

class HomeView extends StatefulWidget {


  HomeMobileView homeMobileView;

  HomeDesktopView homeDesktopView;


  HomeView({required this.homeMobileView,required this.homeDesktopView});




  @override
  State<StatefulWidget> createState() {


    return HomeViewState();

  }
}

class HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {


    return MultiProvider(providers: [ChangeNotifierProvider.value(value: GetIt.instance.get<HomeViewModel>())],
    
    child: LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints){

      if(constraints.maxWidth<600){

        return widget.homeMobileView;
      }

      return widget.homeDesktopView;


    }),
    );

  }

  @override
  void initState() {
     GetIt.instance.get<HomeViewModel>().initStateTrigger();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {

    GetIt.instance.get<HomeViewModel>().disposeTrigger();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didChangeDependencies() {

    if(!ModalRoute.of(context)!.isCurrent){ 
      
      GetIt.instance.get<HomeViewModel>().invisibleTrigger();
    
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}