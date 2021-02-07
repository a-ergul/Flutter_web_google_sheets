import 'package:caci/layout/sagsayfa.dart';
import 'package:caci/layout/solsayfa.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(child: solSayfa()),
          Expanded(child: sagSayfa())
        ],
      ),
    );
  }
}
