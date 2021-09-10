import 'package:flutter/cupertino.dart';

class Provider2 extends ChangeNotifier {
  String debugString = 'Provider 2 Data';

  void updateString(String string) {
    debugString = string;
    notifyListeners();
  }
}
