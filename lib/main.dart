import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mandiri_pbb/pagedraw.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized(); 
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override 
  void initState() { 
    super.initState(); 
    initialization(); 
  }
  
  void initialization() async { 
    print('ready...'); 
    await Future.delayed(const Duration(milliseconds: 1000)); 
    print('set...'); 
    await Future.delayed(const Duration(milliseconds: 800)); 
    print('in...'); 
    await Future.delayed(const Duration(milliseconds: 500)); 
    print('go!'); 
    FlutterNativeSplash.remove(); 
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageDraw(),
      ),
    );
  }
}
