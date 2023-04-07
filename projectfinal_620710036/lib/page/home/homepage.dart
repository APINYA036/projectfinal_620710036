import 'package:flutter/material.dart';
import 'package:projectfinal_620710036/page/asahi/asahi_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectfinal_620710036/page/asahi/asahi_page2.dart';
import 'package:projectfinal_620710036/page/asahi/asahi_page3.dart';
class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 0;
  AsahiPage? _currentPage = AsahiPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade700,
        title: Text(
          '아사히',
          style: GoogleFonts.niramit(fontSize:45.0,color: Colors.white), //ฟ้อน
        ),
        actions: [
          _subPageIndex == 0
              ? IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          )
              : SizedBox.shrink(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red.shade200,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 5.0),
                    child: Text(
                      '아사히',
                      style: GoogleFonts.niramit(fontSize: 28.0,color: Colors.grey.shade50),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: _buildDrawerItem(Icons.person_pin, 'มาดูรู้จักเทพเจ้ากัน!', 0),
              onTap: () {
                _showSubPage(context, 0);
              },
            ),

            ListTile(
              title: _buildDrawerItem(Icons.child_care, 'ข้อมูลของเทพเจ้า', 1),
              onTap: () {
                _showSubPage(context, 1);
              },
            ),
            ListTile(
              title: _buildDrawerItem(Icons.library_music_rounded, 'ผลงานเทพเจ้าและผองเพื่อน', 2),
              onTap: () {
                _showSubPage(context, 2);
              },
            ),
          ],
        ),
      ),
      body: _buildSubPage(),
    );
  }

  dynamic _buildSubPage() {
    switch (_subPageIndex) {
      case 0:
        return _currentPage;
      case 1:
        return AsahiPage_();
      case 2:
        return AsahiPage2_();
      default:
        return null;
    }
  }

  Row _buildDrawerItem(IconData icon, String title, int onFocus) {
    return Row(
      children: [
        Icon(icon, color: _subPageIndex == onFocus ? Colors.purple.shade400 : null),
        SizedBox(width: 8.0),
        Text(title, style: _subPageIndex == onFocus
            ? GoogleFonts.trirong(fontSize: 20.0)
            : GoogleFonts.trirong(fontSize: 18.0)
        ),
      ],
    );
  }

  void _showSubPage(BuildContext context, int page) {
    setState(() {
      _subPageIndex = page;
      _currentPage = page == 0 ? AsahiPage() : null;
    });
    Navigator.of(context).pop();
  }
}
