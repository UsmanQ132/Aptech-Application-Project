import 'package:flutter/material.dart';

class Faqs extends StatelessWidget {
  const Faqs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
                child: Container(
                  padding: const EdgeInsets.only(top: 35, bottom: 12),
                  color: const Color.fromARGB(255, 255, 193, 7),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'FAQs',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 5,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back
                  },
                ),
              ),
            ],
          ),

          // FAQs section using ExpansionTile
         const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                FaqTile(
                  question: "How is Aptech different from other institutes?",
                  answer:
                      "Aptech provides comprehensive industry-relevant training designed by experts to ensure students are job-ready upon completion.",
                ),
               FaqTile(
                  question: "Are your course timings flexible?",
                  answer:
                      "Yes, we offer flexible timings for students with different schedules, ensuring that you can balance work, study, and personal life.",
                ),
                FaqTile(
                  question:
                      "Do you give students practical experience while teaching?",
                  answer:
                      "Yes, we believe in hands-on learning, and all our courses include practical assignments and real-world projects.",
                ),
                FaqTile(
                  question:
                      "Do we get placed after completing the course?",
                  answer:
                      "Aptech has a dedicated placement assistance team to help students secure jobs after completing their courses.",
                ),
                FaqTile(
                  question: "What is credit transfer facility?",
                  answer:
                      "Our credit transfer facility allows you to transfer your credits to various affiliated universities for higher education.",
                ),
                FaqTile(
                  question: "What are the job prospects in the IT industry?",
                  answer:
                      "The IT industry is booming, and there's a high demand for skilled professionals in various sectors such as software development, IT support, cybersecurity, and more.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FaqTile extends StatelessWidget {
  final String question;
  final String answer;

  const FaqTile({required this.question, required this.answer, super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        question,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            answer,
            style: const TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
