import 'package:flutter/material.dart';

// TODO: Insert your student ID here
const studentId = '630710678';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

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
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Good Morning',
                textAlign: TextAlign.center,
                style: textTheme.headline6,
              ),
              Text(
                studentId,
                textAlign: TextAlign.center,
                style: textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
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
          color: Colors.black, // Change border color as needed
          width: 2.0, // Change border width as needed
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
            padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Colors.black, // Change border color as needed
                width: 2.0, // Change border width as needed
              ),
            ),
            child: Text(
              'อะไรเอ่ยไม่เข้าพวก ?',
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
              _buildSmallContainer('Dog', Colors.white),
            ],
          ),
          SizedBox(height: 5.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSmallContainer('Duck', Colors.white),
            ],
          ),
          SizedBox(height: 5.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSmallContainer('Cat', Colors.white),
            ],
          ),
          SizedBox(height: 5.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSmallContainer('Apple', Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSmallContainer(String text, Color backgroundColor) {
    return Container(
      width: 150.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: Column(
        children: [
          Center(

            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          SizedBox(height: 5.0),
        ],
      ),
    );
  }

  _buildButtonPanel() {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Handle button click
            },
            child: Text('Start Quiz'),
          ),
          // Add more UI for the button panel as needed
        ],
      ),
    );
  }
}
