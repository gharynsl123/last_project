import 'package:flutter/material.dart';
import 'package:last_project/screen/parent_screen.dart';

void main() => runApp(const WisataApp());

class WisataApp extends StatelessWidget {
  const WisataApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (ParentScreen()),
    );
  }
}