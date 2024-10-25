import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cpism extends StatelessWidget {
  const Cpism({super.key});

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
                  'Term-1 CPISM - (Certificate of Proficiency in Information Systems Management)',
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
                      '• Create documents, spreadsheets and presentations efficiently for analyzing and presenting data'),
                  Text(
                      '• Use HTML5 / CSS3 / JavaScript to develop interactive Websites and apps'),
                  Text(
                      '• Learn to build dynamic and responsive sites with Bootstrap and jQuery'),
                  Text(
                      '• Learn the basics of Git for tracking, branching, merging, and managing code revisions'),
                  Text(
                      '• Apply SEO principles and techniques to improve ranking of Websites'),
                  Text(
                      '• Build a responsive Website based on a real-world case study'),
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
                  Text('• Effective Productivity through Office Automation'),
                  Text('• Progressive Website Development'),
                  Text('• Bootstrap and jQuery for Responsive Web-pages'),
                  Text('• Distributed Version Control'),
                  Text('• Optimize Web for Search Engines'),
                  Text('• eProject-Responsive Website Development'),
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
                  Text('• RESPONSIVE WEB DEVELOPER'),
                  SizedBox(width: 10),
                  Icon(Icons.web, size: 40, color: Colors.orange),
                ],
              ),
              SizedBox(height: 20),

              // Icons for technologies
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.html, size: 50),
                      Text('HTML5'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.css, size: 50),
                      Text('CSS3'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.javascript, size: 50),
                      Text('JavaScript'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.web_asset, size: 50),
                      Text('Bootstrap'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.search, size: 50),
                      Text('SEO'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
