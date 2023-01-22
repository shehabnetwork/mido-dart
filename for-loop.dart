import 'dart:io';

void main() {
  var total = 0;
  // var index = 0;
  // while (index++ < 5) {
  //   print("please enter studen No: ${index} Degree");
  //   var degree = int.parse(stdin.readLineSync() ?? '0');
  //   total = total + degree;
  // }
  var noOfStudents = 5;
  var line = "-";
  for (var i = 0; i < 30; i++) {
    line = line + '-';
  }
  for (var index = 0; index < noOfStudents; index++) {
    print("please enter studen No: ${index} Degree");
    print(line);
    var degree = int.parse(stdin.readLineSync() ?? '0');
    total = total + degree;
  }
  print(total / 5);
}
