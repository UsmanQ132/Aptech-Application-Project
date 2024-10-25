import 'dart:convert';

import 'package:aptech_app/Languagesdetails.dart';
import 'package:flutter/material.dart';

// Course Data Class
class Languages {
  final String Limages;
  final String Ltitle;
  final String Ldescription;

  Languages({
    required this.Limages,
    required this.Ltitle,
    required this.Ldescription,
  });

  factory Languages.fromJson(Map<String, dynamic> json) {
    return Languages(
      Limages: json['Limages'],
      Ltitle: json['Ltitle'],
      Ldescription: json['Ldescription'],
    );
  }
}

class LanguagesCourse extends StatefulWidget {
  const LanguagesCourse({super.key});

  @override
  State<LanguagesCourse> createState() => _LanguagesCourseState();
}

class _LanguagesCourseState extends State<LanguagesCourse> {
  // Call List of Course Data
  List<Languages> languagedatas = [];

  // Course Data Indexes
  final String Courseindex = '''
  [
    {
      "Limages": "assets/beginner.png",
      "Ltitle": "Begineer",
      "Ldescription":"Beginners English Language Course is designed to provide a solid foundation for learners starting their English language journey. Through interactive lessons, engaging activities, and practical exercises, students will develop essential skills in speaking, listening, reading, and writing. Join us and embark on an exciting learning adventure today!"
    },
    {
      "Limages": "assets/preintermediate.png",
      "Ltitle": "Pre-Intermiate",
      "Ldescription":"Pre-Intermediate English language course is designed for learners who have a basic understanding of English and want to further develop their skills. This comprehensive course focuses on improving grammar, vocabulary, reading, writing, listening, and speaking abilities. Through interactive lessons and engaging activities, students will gain confidence in using English in everyday situations."
    },
    {
      "Limages": "assets/intermediate.png",
      "Ltitle": "Intermediate",
      "Ldescription":"Intermediate English Language Course is designed to take your language skills to the next level. Through engaging lessons and interactive activities, you will enhance your vocabulary, grammar, and conversational abilities. Build confidence in expressing yourself fluently and accurately while exploring a wide range of topics. Join us on this exciting linguistic journey!"
    },
        {
      "Limages": "assets/upperintermediate.png",
      "Ltitle": "Upper Intermediate",
      "Ldescription":"Take your English language proficiency to new heights with our Upper Intermediate English Language Course. Designed for learners seeking advanced fluency, this course focuses on refining grammar, expanding vocabulary, and honing communication skills. Engage in stimulating discussions, debates, and presentations while exploring complex topics. Elevate your language abilities and unlock endless opportunities!"
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
      languagedatas = data.map((json) => Languages.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 193, 7),
        elevation: 0,
        title: const Text(
          'LANGUAGE',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () {
            Navigator.of(context).pop(); // Go back to the previous screen
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Expanded(
            // Wrapping the GridView in Expanded
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              padding: const EdgeInsets.all(10),
              children: List.generate(languagedatas.length, (index) {
                return Column(
                  children: [
                    SkillCard(
                      imagePath: languagedatas[index].Limages,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Languagesdetails(
                                languagesdata: languagedatas[index]),
                          ),
                        );
                      },
                    ),
                    Text(
                      languagedatas[index].Ltitle,
                      maxLines: 2, // Allow max 2 lines
                      overflow: TextOverflow
                          .ellipsis, // Show "..." when text is too long
                      style: const TextStyle(
                          fontSize:
                              14), // You can adjust the font size if needed
                      textAlign: TextAlign
                          .center, // Center align the text), // Display the course title
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
