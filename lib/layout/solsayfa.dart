import 'package:flutter/material.dart';

class solSayfa extends StatelessWidget {
  const solSayfa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
            padding: const EdgeInsets.all(50),
            child: Image(
              image: AssetImage('images/cacilogo.jpg'),
            )),
      ),
    );
  }
}
