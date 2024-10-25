import 'package:flutter/material.dart';

class PartnerWithUsPage extends StatelessWidget {
  const PartnerWithUsPage({super.key});

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
                  padding: const EdgeInsets.only(top: 35,bottom: 12),
                  color: const Color.fromARGB(255, 255, 193, 7),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Partner with Us',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
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
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Navigates back
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 05),

                // IT Industry of Pakistan Section
                SectionTitle(title: "I.T Industry of Pakistan"),
                SectionText(
                    content:
                        "Pakistan's digital growth is evolving at a rapid pace..."),

                const SizedBox(height: 20),

                // Skill Professionals Required for Jobs Section
                SectionTitle(title: "Skill Professionals required for Jobs"),
                SectionText(
                    content:
                        "As of recent, very more than 20,000 graduates from university..."),

                const SizedBox(height: 20),

                // Opportunities for Freelancing Section
                SectionTitle(title: "Opportunities for Freelancing"),
                SectionText(
                    content:
                        "Pakistan is the largest country in freelancing..."),

                const SizedBox(height: 20),

                // Why Invest Section
                SectionTitle(title: "Why Invest"),
                SectionText(
                    content:
                        "Franchise Model gives individuals the opportunity..."),

                const SizedBox(height: 20),

                // Support Franchise Section
                SectionTitle(title: "Support Franchise"),
                SectionText(
                    content:
                        "Franchise Support Office (FSO) Pakistan is extending..."),

                const SizedBox(height: 20),

                // Placement Support Section
                SectionTitle(title: "Placement support"),
                SectionText(
                    content:
                        "Franchise Support Office (FSO) Pakistan is extending..."),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget for Section Title
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// Widget for Section Text Content
class SectionText extends StatelessWidget {
  final String content;

  const SectionText({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 16,
        height: 1.5,
      ),
    );
  }
}
