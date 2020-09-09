import 'package:flutter/material.dart';

class Essai extends StatefulWidget {
  @override
  EssaiState createState() {
    return new EssaiState();
  }
}

class EssaiState extends State<Essai> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["Se souvenir de moi", ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get check Value Example"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(_currText,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Expanded(
              child: Container(
            height: 350.0,
            child: Column(
              children: text
                  .map((t) => CheckboxListTile(
                        title: Text(t),
                        value: _isChecked,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val;
                            if (val == true) {
                              _currText = t;
        }
                          });
                        },
                      ))
                  .toList(),
            ),
          )),
        ],
      ),
    );
  }
}