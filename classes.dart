import 'dart:io';

class Rectangle {
  int width = 0;
  int height = 0;
  int area = 0;
  int premeter = 0;

  void CalculateArea() {
    area = width * height;
  }

  void CalculatePremeter() {
    premeter = 2 * (width + height);
  }

  void PrintRectArea() {
    print("Rect Area: ${area} cm2");
  }

  void PrintRectInfo() {
    print("${width} * ${height}  Area = ${area} and Premeter = ${premeter}");
  }
}

void main() {
  String cont = 'y';
  var rectangles = <Rectangle>[];

  while (cont == 'y') {
    var rect = new Rectangle();
    stdout.write("Enter Rect Widht: ");
    rect.width = int.parse(stdin.readLineSync() ?? '0');
    stdout.write("Enter Rect Height: ");
    rect.height = int.parse(stdin.readLineSync() ?? '0');
    rect.CalculateArea();

    rect.CalculatePremeter();
    rect.PrintRectArea();
    rectangles.add(rect);

    stdout.write('Do you want to add another rect(y/n) ?');
    cont = stdin.readLineSync() ?? 'n';
  }

  for (var i = 0; i < rectangles.length; i++) {
    var curRect = rectangles[i];
    curRect.PrintRectInfo();
  }
}
