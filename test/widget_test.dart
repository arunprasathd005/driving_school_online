import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:drive/main.dart';

void main() {
  testWidgets('Test course navigation', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that CoursesScreen is displayed initially.
    expect(find.text('Courses'), findsOneWidget);
    expect(find.text('Profile'), findsNothing);
    expect(find.text('Course Name: Course 1'), findsOneWidget);

    // Tap on a course to navigate to CourseDetailsScreen.
    await tester.tap(find.text('Course Name: Course 1'));
    await tester.pumpAndSettle();

    // Verify that CourseDetailsScreen is displayed.
    expect(find.text('Courses'), findsNothing);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Course Name: Course 1'), findsOneWidget);
    expect(find.text('Description: Description 1'), findsOneWidget);

    // Tap on the profile icon to navigate to ProfilePage.
    await tester.tap(find.byIcon(Icons.person));
    await tester.pumpAndSettle();

    // Verify that ProfilePage is displayed.
    expect(find.text('Courses'), findsNothing);
    expect(find.text('Profile'), findsNothing);
    expect(find.text('Full Name'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Phone Number'), findsOneWidget);
    expect(find.text('Driver\'s License Number'), findsOneWidget);
  });
}
