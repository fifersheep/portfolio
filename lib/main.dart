import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/injection.dart';
import 'package:portfolio/presentation/constants/images.dart';
import 'package:url_strategy/url_strategy.dart';

import 'presentation/app.dart';
import 'presentation/constants/strings.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('licenses/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  configureDependencies(Environment.prod);
  setPathUrlStrategy();
  runApp(Images(child: Strings(child: App())));
}
