import 'Person.dart';
import 'RoleBehavior.dart';

class Teacher extends Person {
  /// Include an attribute for teacherID and an array to store coursesTaught.
  late String? teacherId;
  List<String> coursesTaught = [];

  /// Provide a constructor to initialize attributes.
  Teacher(name, age, address, this.teacherId, this.coursesTaught)
      : super(name, age, address, TeacherRole()) {
    print("Teacher Information:");
    displayRole();
    print("Name: ${getName()}");
    print("Age: ${getAge()}");
    print("Address: ${getAddress()}");
    print("Courses Taught:");
    _getCoursesTaught();
  }

  /// Override the displayRole() method to display "Role: Student".
  @override
  void displayRole() {
    print("Role: Teacher");
  }

  /// Implement a method to display the courses taught by the teacher.
  void _getCoursesTaught() {
    if (coursesTaught.isNotEmpty) {
      for (var course in coursesTaught) {
        print("- $course");
      }
    } else {
      print("- Taught no course.");
    }
  }
}