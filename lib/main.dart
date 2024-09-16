import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:providerassenior/view_models/HomeViewModel/home_desktop_view_model.dart';
import 'package:providerassenior/view_models/HomeViewModel/home_mobile_view_model.dart';
import 'package:providerassenior/view_models/HomeViewModel/home_view_model.dart';
import 'package:providerassenior/views/HomeView/Home_view.dart';
import 'package:providerassenior/views/HomeView/home_desktop_view.dart';
import 'package:providerassenior/views/HomeView/home_mobile_view.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();

  GetIt.instance.registerSingleton<HomeViewModel>(HomeViewModel());

  GetIt.instance.registerSingleton<HomeMobileViewModel>(HomeMobileViewModel());

    
  GetIt.instance.registerSingleton<HomeDesktopViewModel>(HomeDesktopViewModel());




  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "seniorprovider",

      initialRoute: "Home",

      routes:{


        "Home":(context)=>HomeView(homeMobileView: HomeMobileView(), homeDesktopView: HomeDesktopView())
      } ,
    );

  }

}



