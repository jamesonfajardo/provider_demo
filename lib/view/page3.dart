import 'package:flutter/material.dart';
import 'package:state_management_ui/model/provider1.dart';
import 'package:provider/provider.dart';
import 'package:state_management_ui/model/provider2.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider1 _provider1 = Provider.of<Provider1>(context);
    Provider2 _provider2 = Provider.of<Provider2>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Page 3')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Text(_provider1.debugString),
          SizedBox(height: 16),
          Text(_provider2.debugString),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
