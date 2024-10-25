import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class S1 extends StatelessWidget {
  const S1({super.key});

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
                'CPISM - (Certificate of Proficiency in Information Systems Management)',
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
                      '• Learn to work faster and smarter with MS Office applications.'),
                  Text(
                      '•  Use HTML 5 /CSS 3 /JavaScript to implement well structured Websites'),
                  Text(
                      '• Learn Bootstrap-Free and open-source front-end web framework for designing websites and web applications'),
                  Text(
                      '• Learn the basic principles of effective web UX/UI design'),
                  Text(
                      '• Learn how to get your Websites on top rankings organically through search engine optimization'),
                  Text(
                      '• Develop an interactive Web site using latest Web technologies'),
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
                  Text('• Office Automation'),
                  Text('• Building Modern Websites'),
                  Text('• BootStrap and JQuery'),
                  Text('• UI/UX for Responsive Web Design'),
                  Text('• Optimize Web for Search Engines'),
                  Text('• Semester eProject'),
                ],
              ),
              SizedBox(height: 20),

              // Workshops Section
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

              // Job Profile Section
              Text(
                'Job Profile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Website Developer'),
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
