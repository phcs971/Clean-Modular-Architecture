import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';{{#hasStore}}
import './{{widget.snakeCase()}}_store.dart';{{/hasStore}}

{{#isStatefull}}class {{widget.pascalCase()}}Widget extends StatefulWidget {
  const {{widget.pascalCase()}}Widget({Key? key}) : super(key: key);

  @override
  {{widget.pascalCase()}}WidgetState createState() => {{widget.pascalCase()}}WidgetState();
}

class {{widget.pascalCase()}}WidgetState extends State<{{widget.pascalCase()}}Widget> { 
  {{#hasStore}}final {{widget.pascalCase()}}Store store = Modular.get(); 
  {{/hasStore}}
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}{{/isStatefull}}{{^isStatefull}}class {{widget.pascalCase()}}Widget extends StatelessWidget {
  const {{widget.pascalCase()}}Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { {{#hasStore}}
    final {{widget.pascalCase()}}Store store = Modular.get();{{/hasStore}}
    return Container();
  }
}
{{/isStatefull}}