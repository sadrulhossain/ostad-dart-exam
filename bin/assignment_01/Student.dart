import 'Person.dart';
import 'RoleBehavior.dart';

class Student extends Person {
  /// Include additional attributes for studentID, grade, and a list to store courseScores.
  late String? studentId;
  late String? grade;
  List<double> courseScores = [];

  /// Provide a constructor to initialize attributes.
  Student(name, age, address, this.studentId, this.grade, this.courseScores)
      : super(name, age, address, StudentRole()) {
    print("Student Information:");
    displayRole();
    print("Name: ${getName()}");
    print("Age: ${getAge()}");
    print("Address: ${getAddress()}");
    print("Average Score: ${_getAvgScore()}");
  }

  /// Override the displayRole() method to display "Role: Student".
  @override
  void displayRole() {
    print("Role: Student");
  }

  /// Implement a method to calculate the average score of courses.
  double _getAvgScore() {
    return courseScores.isNotEmpty ? (courseScores.reduce((score, total) => total + score)) / courseScores.length : 0;
  }
}