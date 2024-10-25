import 'package:aptech_app/ShortCourse.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CourseDetails extends StatefulWidget {
  // Link the CourseData Class Here
  final CourseData courseData;

  // Required this CourseData Class in CourseDetails 
  const CourseDetails({super.key, required this.courseData});

  @override
  _CourseDetailsCardState createState() => _CourseDetailsCardState();
}

class _CourseDetailsCardState extends State<CourseDetails> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView( // To handle long content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.asset(
                    widget.courseData.Cimages,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Navigates back
                    },
                  ),
                ),
// Like Button
                Positioned(
                  top: 10,
                  right: 10,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: isLiked ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(  // This ensures the text fits within the row and screen width
                        child: Text(
                          widget.courseData.Ctitle,
                          maxLines: 2,  // Allow max 2 lines
                          overflow: TextOverflow.ellipsis,  // Truncate if too long
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
            const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[600], size: 18),
                      const SizedBox(width: 4),
                      Text(
                        '4.5 (255 Reviews)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
            const SizedBox(height: 8.0),
               const   Text(
                    'Class Duration', 
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
              const  Text(
                    '2 hrs. / 3 days a week', 
                    style: TextStyle(
                      fontSize: 14, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            const SizedBox(height: 8.0),
               const   Text(
                    'Course Duration', 
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
              const  Text(
                    '40 Hrs', 
                    style: TextStyle(
                      fontSize: 14, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                        const SizedBox(height: 8.0),
               const   Text(
                    'Description', 
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                const SizedBox(height: 8.0),
                  ReadMoreText(
                    widget.courseData.Cdescription,
                    trimLines: 3,
                    colorClickableText: Colors.blueAccent,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read More', // Fixed typo here
                    trimExpandedText: 'Read Less',
                    style:const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                    ),
                  ),           
             
           
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
