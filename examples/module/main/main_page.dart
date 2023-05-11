import 'package:flutter_modular/flutter_modular.dart';
import 'package:mixers/app/modules/main/main_store.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({Key? key, this.title = 'MainPage'}) : super(key: key);
  @override
  MainPageState createState() => MainPageState();
}
class MainPageState extends State<MainPage> {
  final MainStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}