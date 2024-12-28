import 'Role.dart';

class StudentRole implements Role {
  @override
  void displayRole() {
    print("Role: Student");
  }
}

class TeacherRole implements Role {
  @override
  void displayRole() {
    print("Role: Teacher");
  }
}