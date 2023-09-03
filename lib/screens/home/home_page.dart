// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710678';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.black, // เปลี่ยนสีขอบเป็นสีที่คุณต้องการ
          width: 2.0, // เปลี่ยนความหนาขอบตามต้องการ
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Quiz',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Colors.black, // เปลี่ยนสีขอบเป็นสีที่คุณต้องการ
                width: 2.0, // เปลี่ยนความหนาขอบตามต้องการ
              ),
            ),
            child: Text(
              'อะไรเอ่ย แม่ก็ไม่ใช่แม่เรา แต่เราเรียกแม่ ?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSmallContainer('Dog'),
            ],
          ),
          SizedBox(height: 5.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSmallContainer('Duck'),
            ],
          ),
          SizedBox(height: 5.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSmallContainer('Cat'),
            ],
          ),
          SizedBox(height: 5.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSmallContainer('Apple'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSmallContainer(String text, {double width = 200.0, double height = 50.0, Color borderColor = Colors.black}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: borderColor,
          width: 2.0,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  _buildButtonPanel() {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // เมื่อปุ่มถูกคลิก
              // ทำอะไรก็ตามที่คุณต้องการ
            },
            child: Text('Start Quiz'),
          ),
          // สร้าง UI ของ ButtonPanel ตามต้องการ
          // ตัวอย่าง: ButtonPanel(),
        ],
      ),
    );
  }
}
