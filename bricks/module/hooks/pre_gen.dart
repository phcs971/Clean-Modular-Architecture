import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final String name = context.vars['name'] ?? "";
  final paths = separatePaths(name.snakeCase);
  context.logger.info("Running 'slidy g m ${paths[1]} -c' at ${paths[0]}");
  Process.runSync("slidy", ["g", "m", paths[1], "-c"],
      runInShell: true, workingDirectory: paths[0]);
}

List<String> separatePaths(String name) {
  final paths = Directory.current.path.split("/");
  bool foundAppDir = false, foundLibDir = false;
  List<String> leftPath = [], rightPath = [];
  for (var path in paths) {
    if (path == "lib") foundLibDir = true;
    if (foundAppDir) rightPath.add(path);
    if (!foundLibDir) leftPath.add(path);
    if (path == "app") foundAppDir = true;
  }
  rightPath.add(name);
  return [leftPath.join("/"), rightPath.join("/")];
}
