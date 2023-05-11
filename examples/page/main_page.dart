import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import './main_store.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> { 
  final MainStore store = Modular.get(); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}