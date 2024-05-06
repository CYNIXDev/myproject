import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class BugReport {
  final int id;
  final String bug;
  final String status;
  final String priority;
  final String date;

  BugReport({
    required this.id,
    required this.bug,
    required this.status,
    required this.priority,
    required this.date,
  });
}

class MyApp extends StatelessWidget {
  final List<BugReport> bugList = [
    BugReport(
      id: 1,
      bug: 'ปัญหาการเข้าสู่ระบบ',
      status: 'รอดำเนินการ',
      priority: 'ด่วนมาก',
      date: '2024-01-01',
    ),
    BugReport(
      id: 2,
      bug: 'ปัญหาการโหลดข้อมูลช้า',
      status: 'รอดำเนินการ',
      priority: 'ไม่ด่วน',
      date: '2024-01-01',
    ),
    BugReport(
      id: 3,
      bug: 'ปัญหาการแสดงผลไม่ถูกต้อง',
      status: 'รอดำเนินการ',
      priority: 'ไม่ด่วน',
      date: '2024-01-01',
    ),
    BugReport(
      id: 4,
      bug: 'ปัญหาการส่งข้อมูลผิดพลาด',
      status: 'รอดำเนินการ',
      priority: 'ด่วน',
      date: '2024-01-01',
    ),
    BugReport(
      id: 5,
      bug: 'ปัญหาการอัปเดตแอปไม่สำเร็จ',
      status: 'รอดำเนินการ',
      priority: 'ไม่ด่วน',
      date: '2024-01-01',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bug Report List'),
        ),
        body: Center(
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Bug')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Priority')),
            ],
            rows: bugList.map((e) {
              return DataRow(cells: [
                DataCell(Text(e.bug)),
                DataCell(Text(e.status)),
                DataCell(Text(e.priority)),
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
