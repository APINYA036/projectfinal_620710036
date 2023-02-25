import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';
import 'package:taejai/pages/project/project_details_page.dart';
import '../../models/project.dart';

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
      title: 'Chef Scholarship ปั้นเด็กให้เป็นเชฟ',
      description:
      'จุดเริ่มต้นการเรียนสำหรับเด็กทุกคน ด้วยการมอบทุนการศึกษาให้น้องๆ 1,000 คนทั่วประเทศ ',
      targetAmount: 7000000,
      duration: 16,
      receiveAmount: 3500000,
      doneteCount: 500, imagaUrl: 'assets/imager/Project1.jpg',
      projectDuration: '25 เม.ย. 2566 ถึง 09 พ.ค. 2566',
      projectArea: 'ทั่วประเทศ',
    ),
    Project(
      title: 'ผ้าอ้อมเพื่อผู้ป่วยสูงอายุ',
      description:
      'ช่วยเหลือผู้ป่วยและผู้สูงอายุยากไร้ด้วยการมอบผ้าอ้อมและถุงกำลังใจ สำหรับครอบครัวผู้สูงอายุ ผู้ป่วย ผู้พิการผู้มีรายได้น้อย',
      targetAmount: 3000000,
      duration: 309,
      receiveAmount: 1555505,
      doneteCount: 2238,
      imagaUrl: 'assets/imager/Project2.jpg',
      projectDuration: 'ดำเนินการต่อเนื่องตลอดทั้งปี',
      projectArea: 'กรุงเทพฯ และปริมณฑล',
    ),
    Project(
      title: 'โครงการดนตรีเพื่อเด็กในสถานสงเคราะห์',
      description:
      'เพื่อเด็กๆในมูลนิธิได้มีโอกาสเรียนดนตรี ลดความเครียด เสริมสร้างสมาธิ พัฒนาร่างกายและฟื้นฟูจิตใจให้พร้อมเติบโตเป็นผู้ใหญ่ที่มีความสุข',
      targetAmount: 49170,
      duration: 64,
      receiveAmount: 21130,
      doneteCount: 37,
      imagaUrl: 'assets/imager/Project3.jpg',
      projectDuration: '04 มี.ค. 2566 ถึง 02 มี.ค. 2567',
      projectArea: ' จังหวัดเชียงใหม่',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เทใจ')),
      body: ListView.builder(
        itemCount: projects.length,
        // Callback function
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index];

          var descriptionStyle = const TextStyle(
            fontSize: 16.0,
            color: Colors.black87,
            overflow: TextOverflow.ellipsis,
          );
          var amountStyle = const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          );

          var formatter = NumberFormat('#,###,000');
          var target = formatter.format(project.targetAmount);
          var percentText =
          ((project.receiveAmount / project.targetAmount) * 100)
              .toStringAsFixed(0);
          var percent = int.tryParse(percentText);

          return Card(
            child: InkWell(
              onTap: () {
                _handleClickProjectItem(projects[index]);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          project.imagaUrl,
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                        /*Container(
                          width: 60.0,
                          height: 60.0,
                          color: Colors.pink,
                        ),*/
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(project.title),
                            const SizedBox(height: 8.0),
                            Text(project.description, style: descriptionStyle,maxLines: 3,),
                          ],
                        )
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('เป้าหมาย', style: descriptionStyle),
                            Text('$target บาท', style: amountStyle),
                          ],
                        ),
                        Text('$percentText%', style: descriptionStyle),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: percent!,
                          child: Container(
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),
                            color: Colors.purple,
                          ),
                        ),
                        Expanded(
                          flex: 100 - percent,
                          child: Container(
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),
                            color: const Color(0xFFE8E8E8), //Colors.grey[200],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('${project.duration} วัน', style: descriptionStyle),
                        Row(
                          children: [
                            const Icon(Icons.person, size: 20.0),
                            Text('${project.doneteCount}',
                                style: descriptionStyle),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleClickProjectItem(Project p) {
    print(p.targetAmount.toString());

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetailsPage(project: p)),
    );
  }
}