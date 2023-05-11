import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
{{#hasStore}}
import './{{page.snakeCase()}}_store.dart';
{{/hasStore}}

class {{page.pascalCase()}}Page extends StatefulWidget {
  const {{page.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  {{page.pascalCase()}}PageState createState() => {{page.pascalCase()}}PageState();
}

class {{page.pascalCase()}}PageState extends State<{{page.pascalCase()}}Page> { 
  {{#hasStore}}final {{page.pascalCase()}}Store store = Modular.get(); 
  {{/hasStore}}
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}