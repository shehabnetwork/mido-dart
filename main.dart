import 'dart:html';
import 'dart:io';

void main() {
  print("Enter your name?");
  var name = stdin.readLineSync();
  print("Welcome, $name");
  print("Enter Your Birthdate: ");
  var intAge = stdin.readByteSync();
  print("Your Age Is $intAge");
}
