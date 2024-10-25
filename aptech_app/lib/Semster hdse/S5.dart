import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class S5 extends StatelessWidget {
  const S5({super.key});

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
                'HDSE I - (Higher Diploma in Software Engineering)',
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
                      '• English: Learn to present facts in a systematic and logical manner and enhance reading, writing & Comprehension skills.'),
                  Text(
                      '• Business Communication: Develop communication skills as applied in commerce and business correspondence'),
                  Text(
                      '• Technical Report Writing: Understand the basic techniques of technical writing and use these techniques to write readable technical report.'),
                  Text(
                      '• Management: Understand the basic concepts and principles of economics, business management and organization.'),
                  Text(
                      '• ERP: Learn to develop solutions for large enterprises using Oracle ERP.'),
                ],
              ),
              // Module Section
              Text(
                'Module',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• Occupational Health, Safety & Environment'),
                  Text('• Technical Report Writing'),
                  Text('• Management'),
                  Text('• Oracle ERP Essentials'),
                  Text('• Oracle ERP Financials'),
                  Text('• Oracle ERP Supply Chain'),
                  Text('• English'),
                  Text('• Business Communication'),
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
                  Text('Oracle ERP Developer'),
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
