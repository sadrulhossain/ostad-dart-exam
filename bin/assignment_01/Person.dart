import 'Role.dart';

class Person{
  /// Include attributes for name, age, and address.
  late String? name;
  late int? age;
  late String? address;
  /// Include a reference to the Role abstract class.
  Role role;

  /// Provide a constructor and getter methods for the attributes.
  Person(this.name, this.age, this.address, this.role);

  String? getName() => name;
  int? getAge() => age;
  String? getAddress() => address;

  /// Implement the Role abstract methods.
  void displayRole() {
    role.displayRole();
  }
}