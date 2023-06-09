import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taejai/models/project.dart';

var title = const TextStyle(
  fontSize: 20.0,
  color: Colors.black87,
  overflow: TextOverflow.ellipsis,
);
var receiveAmountStyle = const TextStyle(
  fontSize: 20.0,
  color: Colors.redAccent,
  overflow: TextOverflow.ellipsis,
);
var descriptionStyle = const TextStyle(
  fontSize: 20.0,
  color: Colors.black87,
  overflow: TextOverflow.ellipsis,
);
var amountStyle = const TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  color: Colors.black87,
);

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,###,000');
    var receive = formatter.format(project.receiveAmount);
    var target = formatter.format(project.targetAmount);
    var percentText =
    ((project.receiveAmount / project.targetAmount) * 100)
        .toStringAsFixed(0);
    var percent = int.tryParse(percentText);
    return Scaffold(
      appBar: AppBar(
          title: Text(
            project.title,
            overflow: TextOverflow.ellipsis,
          )),
      body:Container(
        child:  SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: 20.0),
                      Text(project.title,style: title,),
                      SizedBox(height: 15.0),
                      Image.asset(
                        project.imagaUrl,
                        width: 300.0,
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20.0),

                      Text(project.description,style: descriptionStyle,maxLines: 7,),
                      SizedBox(height: 10.0),
                      Text('ระยะเวลาโครงการ: '+project.projectDuration,style: descriptionStyle,maxLines: 3,),
                      SizedBox(height: 10.0),
                      Text('พื้นที่ดำเนินโครงการ: '+project.projectArea,style: descriptionStyle,maxLines: 3,),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('ยอดบริจาคขณะนี้',style: amountStyle),
                      ),
                      Text('   '+receive.toString() ,style: receiveAmountStyle,),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('เป้าหมาย', style: descriptionStyle),
                                Text('$target บาท', style: amountStyle),
                              ],
                            ),
                          ),
                          Text('$percentText%', style: descriptionStyle),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: percent!,
                              child: Container(
                                height: 10.0,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 0.0),
                                color: Colors.purple,
                              ),
                            ),
                            Expanded(
                              flex: 100 - percent,
                              child: Container(
                                height: 10.0,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 0.0),
                                color: const Color(0xFFE8E8E8), //Colors.grey[200],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('${project.duration} วัน', style: descriptionStyle),
                            Row(
                              children: [
                                const Icon(Icons.person, size: 14.0),
                                Text('${project.doneteCount}',
                                    style: descriptionStyle),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //SizedBox(height: 10.0),
                      Row(
                        children: [
                          Expanded(flex :2,
                            child: OutlinedButton(
                              onPressed: () {
                                //todo:

                              }
                              ,
                              child: Text('𓃟𓂉𓀬𓂻𓆙 ร่วมบริจาค'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        children: [
                          Expanded(flex :3,
                            child: OutlinedButton(
                              onPressed: () {
                                //todo:
                              },
                              child: Text('𓆈𓃗𓃱𓅷𓆏 หยิบใส่ตะกร้า'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('แชร์ให้เพื่อน กดได้เลย'),
                          //Icon(Icons.shopping_cart_outlined),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(Icons.laptop_chromebook),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(Icons.facebook_sharp),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(Icons.wb_twilight_sharp),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),




    );
  }
}