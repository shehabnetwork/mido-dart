import 'dart:io';

void main() {
  String cont = 'y';
  var widths = <int>[];
  var heights = <int>[];
  var areas = <int>[];
  var premeters = <int>[];

  while (cont == 'y') {
    var rectWidth = 0;
    var rectHeight = 0;
    stdout.write("Enter Rect Widht: ");
    rectWidth = int.parse(stdin.readLineSync() ?? '0');
    stdout.write("Enter Rect Height: ");
    rectHeight = int.parse(stdin.readLineSync() ?? '0');
    var area = CalculateArea(rectWidth, rectHeight);
    var prem = CalculatePremeter(rectWidth, rectHeight);
    print("Rect Area: ${area} cm2");
    widths.add(rectWidth);
    heights.add(rectHeight);
    areas.add(area);
    premeters.add(prem);
    stdout.write('Do you want to add another rect(y/n) ?');
    cont = stdin.readLineSync() ?? 'n';
  }

  for (var i = 0; i < areas.length; i++) {
    print("${widths[i]} * ${heights[i]}  Area = ${areas[i]}");
  }
}

int CalculateArea(int width, int height) {
  var result = width * height;
  return result;
}

int CalculatePremeter(int width, int height) {
  var result = 2 * (width + height);
  return result;
}
