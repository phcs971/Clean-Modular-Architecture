import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './base_store.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    final BaseStore store = Modular.get();
    return Container();
  }
}
