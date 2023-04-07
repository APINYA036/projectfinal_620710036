import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectfinal_620710036/models/Asahi.dart';

class Asahidetail extends StatelessWidget {
  final Asahi asahi2;
  const Asahidetail({Key? key, required this.asahi2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo.shade500,
          title: Text(
            asahi2.title,
            style: GoogleFonts.acme(fontSize: 20.0,color: Colors.grey.shade50),
          )
      ),
      body: Container(
        decoration: BoxDecoration(
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  asahi2.imageUrl,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Text('เนื้อเพลง', style: GoogleFonts.acme(fontSize: 20.0,color: Colors.purple),),
                  ],
                ),
                const SizedBox(height: 10.0),
                Text(asahi2.description, style: GoogleFonts.acme(fontSize: 19.0,color: Colors.blueGrey.shade700),),
                const SizedBox(height: 20.0),
                SizedBox(height: 100.0),

                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.playlist_add_check_circle, color: Colors.green,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.facebook_rounded, color: Colors.blue,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.wechat, color: Colors.green,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.play_circle_fill_outlined, color: Colors.red,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.phone_android, color: Colors.black,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}