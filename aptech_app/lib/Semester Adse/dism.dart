import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dism extends StatelessWidget {
  const Dism({super.key});

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
                  'Term-2 DISM - (Diploma in Information Systems Management)',
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
                      '• Gain the skills to develop a Content Management System with WordPress'),
                  Text(
                      '• Use XML and JSON to store and exchange data'),
                  Text(
                      '• Use MySQL, the world’s most popular open-source database'),
                  Text(
                      '• Create dynamic Web applications using PHP'),
                  Text(
                      '• Learn to work with Laravel Framework to build PHP-based Web applications'),
                  Text(
                      '• Understand the basic functionality of JavaScript to build dynamic Web pages and Web applications'),
                  Text(
                      '• Develop a real-world Web application using PHP and Laravel Framework'),
                  Text(
                      '• Gain the foundational skills to become a millennial entrepreneur'),
                 
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
                  Text('• Build and Manage Websites with CMS'),
                  Text('• Data Processing with XML and JSON'),
                  Text('• Working with MySQL'),
                  Text('• Navigating Dynamic Web Development with PHP'),
                  Text('• Leveraging Laravel Framework for Web Development'),
                  Text('• Programming with JavaScript'),
                  Text('•  A Millennials Guide to Entrepreneurship'),
                ],
              ),
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
                  Text('• PHP DEVELOPERm'),
                  SizedBox(width: 10),
                  Icon(Icons.web, size: 40, color: Colors.orange),
                ],
              ),
              SizedBox(height: 20),

              // Icons for technologies
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Column(
              //       children: [
                
              //         Text('HTML5'),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Icon(Icons., size: 50),
              //         Text('JSON'),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Icon(Icons.javascript, size: 50),
              //         Text('Mysql'),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Icon(Icons.web_asset, size: 50),
              //         Text('PHP'),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Icon(Icons.search, size: 50),
              //         Text('Laravel'),
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
