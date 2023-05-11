import 'package:mixers/app/modules/main/main_page.dart';
import 'package:mixers/app/modules/main/main_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MainStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => MainPage()),
  ];
}
