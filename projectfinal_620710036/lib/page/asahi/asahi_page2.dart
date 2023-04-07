import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectfinal_620710036/models/Asahi-2.dart';

class AsahiPage_ extends StatefulWidget {
  const AsahiPage_({Key? key}) : super(key: key);

  @override
  State<AsahiPage_> createState() => _AsahiPageState();
}

class _AsahiPageState extends State<AsahiPage_> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/asahi19.jpg"),
                fit: BoxFit.cover
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 1000.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text('Nickname: Asahi (아사히)', style:
                      GoogleFonts.acme(fontSize: 30.0, color: Colors.white)),
                      Text('First Name: Hamada Asahi (濱田 朝光)',
                          style: GoogleFonts.acme(
                              fontSize: 30.0, color: Colors.white)),
                      Text('Engname: Arthur',
                          style: GoogleFonts.acme(
                              fontSize: 30.0, color: Colors.white)),
                      Text('Birthday:  20 August 2001 ',
                          style: GoogleFonts.acme(
                              fontSize: 30.0, color: Colors.white)),

                      Text('Address: Osaka, Japan Nationality: Japanese',
                          style: GoogleFonts.acme(
                              fontSize: 30.0, color: Colors.white)),
                      Text('High: 173 cm Weight: 56 kg',
                          style: GoogleFonts.acme(
                              fontSize: 30.0, color: Colors.white)),
                      Text('Member :TREASURE  ',
                          style: GoogleFonts.acme(
                              fontSize: 30.0, color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
