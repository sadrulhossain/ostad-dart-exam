import 'dart:io';
import 'Student.dart';
import 'Teacher.dart';

class StudentManagementSystem {
  void main() {
    try {
      print("Please, Choose a Role: (s for Student / t for Teacher)");
      String? role = stdin.readLineSync();
      
      if (role == 's') {
        _student();
      } else if (role == 't') {
        _teacher();
      }
    } catch (e) {
      print("Oops, something went wrong while getting information. [Reason] : $e");
    }
  }

  void _student() {
    try {
      print("Provide Student Information.");

      print("Enter Name:");
      String? name = stdin.readLineSync();

      print("Enter Age:");
      int? age = int.tryParse(stdin.readLineSync()!);

      print("Enter Address:");
      String? address = stdin.readLineSync();

      print("Enter Student ID:");
      String? studentId = stdin.readLineSync();

      print("Enter Grade:");
      String? grade = stdin.readLineSync();

      print("Enter Course Scores (e.g. 90, 85, 87):");
      String? scores = stdin.readLineSync();
      List<double> courseScores = scores != null ? scores.split(',').map((element) => double.parse(element.trim())).toList() : [];

      print("\n");

      Student(name, age, address, studentId, grade, courseScores);


    } catch(e) {
      print("Oops, something went wrong while getting information. [Reason] : $e");
    }
  }

  void _teacher() {
    try {
      print("Provide Teacher Information.");

      print("Enter Name:");
      String? name = stdin.readLineSync();

      print("Enter Age:");
      int? age = int.tryParse(stdin.readLineSync()!);

      print("Enter Address:");
      String? address = stdin.readLineSync();

      print("Enter Teacher ID:");
      String? teacherId = stdin.readLineSync();

      print("Enter Courses Taught (e.g. Algorithm, Data Structure, Object Oriented Programming):");
      String? courses = stdin.readLineSync();
      List<String> coursesTaught = courses != null ? courses.split(',').map((element) => element.trim()).toList() : [];

      print("\n");

      Teacher(name, age, address, teacherId, coursesTaught);


    } catch(e) {
      print("Oops, something went wrong while getting information. [Reason] : $e");
    }
  }
}
