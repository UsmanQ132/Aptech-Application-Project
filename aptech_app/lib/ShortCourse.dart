import 'dart:convert';

import 'package:aptech_app/Coursedetails.dart';
import 'package:flutter/material.dart';

// Course Data Class
class CourseData {
  final String Cimages;
  final String Ctitle;
  final String Cdescription;

  CourseData({
    required this.Cimages,
    required this.Ctitle,
    required this.Cdescription,
  });

  factory CourseData.fromJson(Map<String, dynamic> json) {
    return CourseData(
      Cimages: json['Cimages'],
      Ctitle: json['Ctitle'],
      Cdescription: json['Cdescription'],
    );
  }
}

class Shortcourse extends StatefulWidget {
  const Shortcourse({super.key});

  @override
  State<Shortcourse> createState() => _ShortcourseState();
}

class _ShortcourseState extends State<Shortcourse> {
  // Call List of Course Data
  List<CourseData> Coursedatas = [];

  // Course Data Indexes
  final String Courseindex = '''
  [
    {
      "Cimages": "assets/office.jpg",
      "Ctitle": "Office Automation",
      "Cdescription":"Office automation refers to the implementation of technology and software solutions to streamline and simplify various administrative tasks within an office environment. It encompasses processes such as document management, data entry, scheduling, communication, and workflow automation. By reducing manual effort, improving efficiency"
    },
    {
      "Cimages": "assets/social.jpg",
      "Ctitle": "Social Media Marketing",
      "Cdescription":"Social Media Marketing course is a comprehensive program designed to equip you with the skills and knowledge needed to excel in the dynamic world of social media. Learn how to create effective strategies, engage your target audience, optimize campaigns, and measure success. Gain practical experience through hands-on projects and case studies."
    },
    {
      "Cimages": "assets/ai.jpg",
      "Ctitle": "AI For Everyone",
      "Cdescription":"Artificial Intelligence (AI) is a groundbreaking technology that is revolutionizing the way we live, work, and interact with the world. It encompasses the development of machines and systems that can perform tasks that typically require human intelligence, such as speech recognition, problem-solving, and decision-making. AI has become accessible to everyone"
    },
        {
      "Cimages": "assets/fba.jpg",
      "Ctitle": "Amazon FBA Virtual Assistant",
      "Cdescription":"Unlock the secrets to Amazon FBA success with our comprehensive course. Learn step-by-step strategies to start and grow a profitable e-commerce business. From product research and sourcing to listing optimization and marketing, we cover it all. Gain insider knowledge and practical skills to dominate the world of Amazon FBA."
    },
        {
      "Cimages": "assets/chatgpt.jpg",
      "Ctitle": "Chat GPT for Developers",
      "Cdescription":"The Chat GPT course is a comprehensive training program designed to equip learners with the skills and knowledge needed to build and deploy chatbots using OpenAIs GPT technology. Through hands-on exercises, practical examples, and expert guidance, participants will learn how to create interactive conversational agents that can engage users effectively"
    },
        {
      "Cimages": "assets/excel.jpg",
      "Ctitle": "Advanced Excel",
      "Cdescription":"Advanced Excel course is designed to take your spreadsheet skills to the next level. Learn advanced functions, data analysis techniques, and data visualization methods. Dive into complex formulas, pivot tables, and macros to streamline your work and increase efficiency. Gain a competitive edge in the workplace with our comprehensive training program."
    },
        {
      "Cimages": "assets/phplaravel.jpg",
      "Ctitle": "Web Development using PHP and Laravel",
      "Cdescription":"PHP and Laravel course is a comprehensive program designed to equip learners with the skills to create dynamic and robust web applications. Through hands-on exercises and real-world projects, participants will gain proficiency in PHP programming and harness the power of Laravel framework for efficient development."
    },
        {
      "Cimages": "assets/tableou.jpg",
      "Ctitle": "Data Visualization foundation with Tableau",
      "Cdescription":"Join our comprehensive Tableau course and unlock the power of data visualization. Learn hands-on techniques for creating interactive dashboards, analyzing data, and sharing insights with Tableaus intuitive interface. Enhance your analytical skills, make data-driven decisions, and gain a competitive edge in todays data-driven world"
    }
  ]''';

  @override
  void initState() {
    super.initState();
    _loadCourseList(); // Parse and load course list when widget initializes
  }

  // Function to parse JSON and convert to list of Coursedata objects
  void _loadCourseList() {
    List<dynamic> data =
        json.decode(Courseindex); // Decode JSON string to dynamic list

    setState(() {
      Coursedatas = data.map((json) => CourseData.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 193, 7),
        elevation: 0,
        title: const Text('Short Courses',
        style: TextStyle(
          color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () {
            Navigator.of(context).pop(); // Go back to the previous screen
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    
          const SizedBox(height: 10),

          Expanded( // Wrapping the GridView in Expanded
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              padding: const EdgeInsets.all(10),
              children: List.generate(Coursedatas.length, (index) {
                return Column(
                  children: [
                    SkillCard(
                      imagePath: Coursedatas[index].Cimages,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(courseData: Coursedatas[index]),
                          ),
                        );
                      },
                    ),
                    Text(Coursedatas[index].Ctitle,
                    maxLines: 2, // Allow max 2 lines
                    overflow: TextOverflow.ellipsis, // Show "..." when text is too long
                    style: const TextStyle(fontSize: 14), // You can adjust the font size if needed
                    textAlign: TextAlign.center, // Center align the text), // Display the course title
                    ),
                  ],
                );
              }),
            ),
          ),

        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const SkillCard({super.key, 
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 20,
        margin: const EdgeInsets.all(1),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),

    );
  }
}
