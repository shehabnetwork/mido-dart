import 'dart:io';

void main() {
  print('Functions App');
  String addMore = 'y';
  var degrees = <int>[];
  var names = <String>[];

  while (addMore == 'y') {
    stdout.write("Enter Student Name: ");
    String name = stdin.readLineSync() ?? '';
    names.add(name);
    stdout.write("Enter Student Degree: ");
    var degree = int.parse(stdin.readLineSync() ?? '0');
    degrees.add(degree);
    stdout.write("Enter New Student (y/n)? ");
    addMore = stdin.readLineSync() ?? 'y';
  }

  var line = "-----------------------------------------";
  print(line);
  print("| Name                | Degree\t\t|");
  print(line);
  for (var i = 0; i < names.length; i++) {
    var currentStudentName = names[i];
    var currentStudentDegree = degrees[i];
    PrintRow(currentStudentName, currentStudentDegree);
  }
}

void PrintRow(String Name, int Degree) {
  var line = FixStringLength('', '-', 19);
  line = '| ' + line + ' | ';
  var numericLine = FixStringLength('', '-', 15) + ' |';
  Name = FixName(Name);

  print("| ${Name}| ${Degree}\t\t|");

  print(line + numericLine);
}

String FixStringLength(String stringToFix, String filler, int MaxLength) {
  var l = stringToFix.length;
  if (l < MaxLength) {
    for (var j = 0; j < MaxLength - l; j++) {
      stringToFix += filler;
    }
  }
  return stringToFix;
}

String FixName(String name) {
  var l = name.length;
  var MaxLength = 20;
  if (l < MaxLength) {
    for (var j = 0; j < MaxLength - l; j++) {
      name += " ";
    }
  }
  return name;
}
