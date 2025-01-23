import 'package:flutter/material.dart';
import 'course_details_screen.dart'; // Correct import path for course details screen

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dummy list of courses
    List<Map<String, dynamic>> courses = [
      {
        'name': 'Basic Driving Course',
        'description': 'Learn the basics of driving and traffic rules',
        'instructor': 'Arun',
        'duration': '4 weeks',
        'price': '\$200',
      },
      {
        'name': 'Defensive Driving Course',
        'description': 'Improve your driving skills and learn defensive driving techniques',
        'instructor': 'Prasath',
        'duration': '6 weeks',
        'price': '\$300',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        backgroundColor: Color(0xFF00C9FF), // Matching theme color
      ),
      backgroundColor: Color(0xFFE8F5E9), // Light green background
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetailsScreen(course: courses[index]),
                ),
              );
            },
            child: Card(
              color: Colors.white,
              elevation: 4.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            courses[index]['name'],
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5CD65C),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF5CD65C),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      courses[index]['description'],
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1.0,
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.grey[600]),
                        SizedBox(width: 8.0),
                        Text(
                          'Instructor: ${courses[index]['instructor']}',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.grey[600]),
                        SizedBox(width: 8.0),
                        Text(
                          'Duration: ${courses[index]['duration']}',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.attach_money, color: Colors.grey[600]),
                        SizedBox(width: 8.0),
                        Text(
                          'Price: ${courses[index]['price']}',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
