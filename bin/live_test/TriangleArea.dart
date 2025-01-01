import 'dart:io';

void main() {
  try {
    print("Let's calculate the area of the triangle.");
    print("Enter length of the base:");
    int? base = int.tryParse(stdin.readLineSync()!);
    print("Enter length of the height:");
    int? height = int.tryParse(stdin.readLineSync()!);
    print("The area of the triangle: ${triangle(base, height)}");
  } catch (e) {
    print("Oops, something went wrong. [Reason] : $e");
  }
}

double triangle(base, height) {
  return 0.5 * base * height;
}