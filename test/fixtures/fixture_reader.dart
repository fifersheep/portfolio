import 'dart:io';

String fixture(String name) {
  // Workaround for IDE vs. cmd line parent paths
  // See https://github.com/flutter/flutter/issues/20907
  var dir = Directory.current.path;
  if (dir.endsWith('/test')) {
    dir = dir.replaceAll('/test', '');
  }

  // would ideally just be 'test/fixtures/$name'
  return File('$dir/test/fixtures/$name').readAsStringSync();
}
