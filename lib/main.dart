import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_ui/model/provider1.dart';
import 'package:state_management_ui/model/provider2.dart';
import 'package:state_management_ui/view/page1.dart';
import 'package:state_management_ui/view/page2.dart';
import 'package:state_management_ui/view/page3.dart';

void main() => runApp(StateManagementDemo());

class StateManagementDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Provider1>(create: (context) => Provider1()),
        ChangeNotifierProvider<Provider2>(create: (context) => Provider2()),
      ],
      child: MaterialApp(
        routes: {
          '/page1': (context) => Page1(),
          '/page2': (context) => Page2(),
          '/page3': (context) => Page3(),
        },
        initialRoute: '/page1',
      ),
    );
  }
}
