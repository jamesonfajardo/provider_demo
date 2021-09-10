import 'package:flutter/cupertino.dart';

class Provider1 extends ChangeNotifier {
  String debugString = 'Provider 1 Data';

  void updateString(String string) {
    debugString = string;
    notifyListeners();
  }
}
