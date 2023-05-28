import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/cupertino.dart';
import 'package:portfolio/generated/l10n.dart';

///Returns "site" for web, otherwise "app"
extension ProductString on BuildContext {
  String getCurrentProductString() {
    if (kIsWeb) {
      return S.of(this).site;
    }
    return S.of(this).app;
  }
}
