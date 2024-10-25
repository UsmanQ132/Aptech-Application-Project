import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class S6 extends StatelessWidget {
  const S6({super.key});

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
                      '• Islamiat & Pakistan Studies'),
                  Text(
                      '• Applied Mathematics'),
                  Text(
                      '• Applied Physics'),
                  Text(
                      '• Applied Chemistry'),
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
