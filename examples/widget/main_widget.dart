import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import './main_store.dart';


class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> { 
  final MainStore store = Modular.get(); 
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}