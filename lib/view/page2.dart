import 'package:flutter/material.dart';
import 'package:state_management_ui/model/provider1.dart';
import 'package:provider/provider.dart';
import 'package:state_management_ui/model/provider2.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Text(Provider.of<Provider1>(context).debugString),
          SizedBox(height: 16),
          Text(Provider.of<Provider2>(context).debugString),
          SizedBox(height: 16),
          FractionallySizedBox(
            widthFactor: 0.9,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Type something..',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              onChanged: (newValue) {
                Provider.of<Provider1>(context, listen: false)
                    .updateString(newValue);
                Provider.of<Provider2>(context, listen: false)
                    .updateString(newValue);
              },
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page3');
            },
            child: Text('Go down the widget tree'),
          ),
        ],
      ),
    );
  }
}
