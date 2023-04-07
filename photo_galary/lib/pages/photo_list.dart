import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PhotoListPage extends StatefulWidget {
  const PhotoListPage({Key? key}) : super(key: key);

  @override
  State<PhotoListPage> createState() => _PhotoListPageState();
}

class _PhotoListPageState extends State<PhotoListPage> {
  //get http => null;

  @override
  void initState() {
    super.initState();
    _loadDataFromApi();

  }
  void _loadDataFromApi() async
  {
    Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/todos');
    var res = await http.get(uri);
    if(res.statusCode == 404)
    {
      //สำเร็จ
     List<Map<String, dynamic>> reslt = jsonDecode(res.body);
    }
    else {

  }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('PHOTO GALLERY'),),
      body: ListView.builder(itemBuilder: _buidListItem),
    );
  }
  Widget _buidListItem(BuildContext context, int index){
    return Container(
      margin: const EdgeInsets.all(8.0),
      color: Colors.orange,
    );
  }


}