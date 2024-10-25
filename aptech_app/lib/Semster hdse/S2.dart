import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class S2 extends StatelessWidget {
  const S2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             
                Text(
                  'DISM - (Diploma in Information Systems Management)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
         
              SizedBox(height: 20),

              // Objectives Section
              Text(
                'Objectives',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '• Learn the basics of Git for tracking, branching, merging, and managing code revisions'),
                  Text(
                      '•  Use XML & JSON to store and exchange data'),
                  Text(
                      '• Understand the basic functionality of JavaScript to build dynamic web pages and web applications'),
                  Text(
                      '• Use MySQL, the world’s most popular open-source database'),
                  Text(
                      '• Design and develop Web applications using PHP'),
                  Text(
                      '• Learn Laravel Web application Framework'),
                  Text(
                      '• Design and develop a Web application using PHP'),
                   Text(
                      '• Gain knowledge, skills and attitude on how to develop products and services successfully'),
                ],
              ),
              SizedBox(height: 20),

              // Module Section
              Text(
                'Module',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• Distributed Version Control'),
                  Text('• Markup Language & JSON'),
                  Text('• Programming with JavaScript'),
                  Text('• Working with MySQL'),
                  Text('• Dynamic Website Development using PHP'),
                  Text('• Laravel Framework for Web Applications using PHP'),
                  Text('• Fundamentals of Millennial Entrepreneurship'),
                  Text('• Semester eProject'),
                ],
              ),
              SizedBox(height: 20),

              // Job Profile Section
              Text(
                'Workshops',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Adobe XD'),
                ],
              ),
              SizedBox(height: 20),

              SizedBox(height: 20),

              // Job Profile Section
              Text(
                'Job Profile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('PHP Web Application Developer'),
                ],
              ),
              SizedBox(height: 20),


            ],
          ),
        ),
      ),
    );
  }
}
