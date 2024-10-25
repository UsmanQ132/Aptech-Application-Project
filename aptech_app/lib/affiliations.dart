import 'package:flutter/material.dart';

class AffiliationsScreen extends StatefulWidget {
  const AffiliationsScreen({super.key});

  @override
  _AffiliationsScreenState createState() => _AffiliationsScreenState();
}

class _AffiliationsScreenState extends State<AffiliationsScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    Localbodies(),
    UniversityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      'Affiliations & Registrations',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
 
            ],
          ),
          const SizedBox(height: 15,),
          Row
          (mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(width: 4,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: currentIndex == 0
                    ? Colors.orange
                    : const Color.fromARGB(255, 255, 255, 255), 
              ),
              child: const Text(
                'Local Bodies',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 6,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: currentIndex == 1
                    ? Colors.orange
                    : const Color.fromARGB(255, 255, 255, 255), 
              ),
              child: const Text(
                'International University',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ]),
          const SizedBox(height: 10,),
          Expanded(
            child: pages[currentIndex], // Display selected page
          ),
        ],
      ),
    );
  }
}

// Local Bodies

class Localbodies extends StatelessWidget {
  const Localbodies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSBTESection(context),
              const SizedBox(height: 20),
              _buildSTEVTASection(context),
            ],
          ),
        ),
      ),
    );
  }

  // SBTE section with text and image
  Widget _buildSBTESection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sindh Board of Technical Education (SBTE)\n"
          "Aptech's HDSE-SBTE program is affiliated with SBTE.",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildTextContent(
            "With the Aptech & SBTE Qualification, students can get the best of both "
            "worlds; They can get the latest in I.T. education and at the same time get "
            "Intermediate equivalency."),
        _buildTextContent(
            "Sindh Board of Technical Education (SBTE) was established under Sindh Ordinance No. XVI of 1970 to replace the "
            "defunct West Pakistan Board of Technical Education. The Board is responsible to organize, regulate, develop and control "
            "technical, vocational, industrial, and commercial education in the province of Sindh."),
        const SizedBox(height: 10),
        Center(
          child: Image.asset(
            'SBTE.png',
            height: MediaQuery.of(context).size.width * 0.3,
          ),
        ),
      ],
    );
  }

  // STEVTA section with text and image
  Widget _buildSTEVTASection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sindh Technical Education & Vocational Training Authority (STEVTA)\n"
          "Aptech is registered with STEVTA.",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildTextContent(
            "Government established STEVTA to undertake & manage STEVTA Institutions in the province. In order to extend complete autonomy "
            "& effective management, the policy making task has been entrusted to the STEVTA Board consisting of eminent professionals from Public & Private Sector, "
            "Representatives from leading industries, universities, etc."),
        _buildTextContent(
            "The mission of STEVTA is to develop a qualitative workforce meeting local and international labor market needs by ensuring excellence "
            "in training through research & development, effective management and regulation of STEVTA setup in the Province."),
        const SizedBox(height: 10),
        Center(
          child: Image.asset(
            'STEVTA.png',
            height: MediaQuery.of(context).size.width * 0.3,
          ),
        ),
      ],
    );
  }

  // Helper function to format text content
  Widget _buildTextContent(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.black87),
      ),
    );
  }
}

// International University Page

class UniversityPage extends StatelessWidget {
  const UniversityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionHeader("Study Abroad & Degree Pathway"),
              _buildTextContent(
                  "Aptech has collaborated with many education institutes "
                  "and universities in the world for the benefit of our students.\n\n"
                  "Aptech enables students to gain an International degree via "
                  "Credit Transfer Facility (CTF)."),
              _buildTextContent("Our Education Alliances:"),
              const SizedBox(height: 10),
              _buildUniversityLogosRow(context),
              const SizedBox(height: 20),
              _buildSectionHeader("Collaboration with NCC Education"),
              _buildTextContent(
                  "Aptech is now an NCC Education Accredited Partner Centre enabling "
                  "candidates to study in their home countries and obtain a Dual Diploma (ADSE "
                  "and Level 5 Diploma in Computing from NCC Education)."),
              _buildTextContent(
                  "With a Dual Diploma, students can opt for higher education in the UK, Australia "
                  "or Ireland for a Degree program at NCC education partnered universities."),
              _buildImageCenter('assets/ncc_education.png'),
              const SizedBox(height: 20),
              _buildSectionHeader(
                  "Collaboration with Lincoln University College"),
              _buildTextContent(
                  "We have now collaborated with Lincoln University College, Malaysia enabling "
                  "candidates to study Advanced Diploma in Software Engineering (ADSE) Program from "
                  "Aptech for 3 years and get entry into the final year of the degree program at Lincoln "
                  "University College, Malaysia."),
              _buildTextContent(
                  "Students can obtain Bachelor of Information Technology (Hons)."),
              _buildImageCenter('assets/lincoln_university.png'),
              const SizedBox(height: 20),
              _buildSectionHeader("Collaboration with Middlesex University"),
              _buildTextContent(
                  "Aptech's partnership with Middlesex University, London offers students an opportunity to "
                  "earn an international I.T. degree with Credit Transfer Facility, at any of Middlesex University's "
                  "3 international campuses in London, Malta, or Dubai."),
              _buildTextContent(
                  "Post completing Advanced Diploma in Software Engineering (ADSE) Program from Aptech for 3 years, "
                  "students get entry into the final year of the degree program at Middlesex University."),
              _buildImageRow(context),
            ],
          ),
        ),
      ),
    );
  }

  // Section Header Widget
  Widget _buildSectionHeader(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange),
    );
  }

  // Text content formatting
  Widget _buildTextContent(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.black87),
      ),
    );
  }

  // University logos row for education alliances
  Widget _buildUniversityLogosRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLogoImage('assets/middlesex_university.png', context),
        _buildLogoImage('assets/ncc_education.png', context),
        _buildLogoImage('assets/lincoln_university.png', context),
      ],
    );
  }

  // Helper function to center an image
  Widget _buildImageCenter(String imagePath) {
    return Center(
      child: Image.asset(
        imagePath,
      ),
    );
  }

  // Helper function to display logos in a row with flexible width
  Widget _buildLogoImage(String imagePath, BuildContext context) {
    return Flexible(
      child: Image.asset(
        imagePath,
        height: MediaQuery.of(context).size.width * 0.2,
      ),
    );
  }

  // Image row for Middlesex university campuses
  Widget _buildImageRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLogoImage('assets/london_campus.png', context),
      ],
    );
  }
}
