// import 'package:flutter/material.dart';
// import 'login_screen.dart'; // Import your login screen

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Driving School'),
//       ),
//       backgroundColor: Color(0xFF5CD65C), // Set background color to #5CD65C
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.local_taxi,
//               size: 100.0,
//               color: Colors.black, // Change icon color to black
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'Welcome to the Driving School App!',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 40.0),
//               child: Text(
//                 'Learn to drive safely with our professional instructors. Get started now!',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 18.0),
//               ),
//             ),
//             SizedBox(height: 40.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/login');
//               },
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//                 child: Text(
//                   'Get Started',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xFF5CD65C), // Change button background color to #5CD65C
//                 textStyle: TextStyle(fontSize: 20.0),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00C9FF), Color(0xFF92FE9D)], // Gradient from blue to green
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 20.0,
                      spreadRadius: 5.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  Icons.directions_car,
                  size: 120.0,
                  color: Color(0xFF4CAF50), // Bright green for the icon
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Welcome to Driving School!',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5.0,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Learn safe driving with expert instructors. Start your journey today!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white.withOpacity(0.9),
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  backgroundColor: Colors.white,
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4CAF50), // Green text
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  // Optional: Handle other actions (like visiting a website or FAQ)
                },
                child: Text(
                  'Learn More',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
