import 'package:flutter/material.dart';
import 'package:projectfinal_620710036/models/Asahi.dart';

class AsahiPage extends StatefulWidget {
  const AsahiPage({Key? key}) : super(key: key);

  @override
  State<AsahiPage> createState() => _AsahiPageState();
}

class _AsahiPageState extends State<AsahiPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/asahi24.jpg"),
              fit: BoxFit.cover),

        ),
      ),
    );
  }
}
