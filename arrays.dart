import 'dart:io';

void main() {
  var degrees = <int>[];
  var names = <String>[];
  print("Enter the number of students: ");
  var noOfElements = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < noOfElements; i++) {
    print("Enter the name of student ${i + 1}: ");
    var name = stdin.readLineSync()!;
    names.add(name);
    print("Enter the degree of student ${i + 1}: ");
    var degree = int.parse(stdin.readLineSync()!);
    degrees.add(degree);
  }

  var line = "-----------------------------------------";
  print(line);
  print("| Name                | Degree\t\t|");
  print(line);
  for (var i = 0; i < names.length; i++) {
    var l = names[i].length;
    if (l < 20) {
      for (var j = 0; j < 20 - l; j++) {
        names[i] += " ";
      }
    }
    print("| ${names[i]}| ${degrees[i]}\t\t|");
    print(line);
  }
}
