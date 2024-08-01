import 'dart:io';
class Menu{

 

  void myMenu(){
  bool ordarState = false; 
  print("------------------------------");
  print("-----------Menu---------------");
  print("------------------------------");
  do {
    Map<String, String> menu = {
    "1-Espresso": "10 SR",
    "2-Americano": "12 SR",
    "3-Latte": "15 SR",
    "4-Cappuccino": "15 SR",
    "5-Mocha": "18 SR",
    "6-Tea": "10 SR",
    "7-Hot Chocolate": "12 SR",
    "8-Pastries": "8 SR each",
    "9-Sandwiches": "25 SR"
    };

    for (var entry in menu.entries) {
      print('${entry.key}: ${entry.value}');
    }

    int? order = int.parse(stdin.readLineSync()!);
    num total = 0;

    switch (order) {
      case 1:
        total += 20;

      case 2:
        total += 15;

      case 3:
        total += 25;
        
      case 4:
        total += 25;
    }

    print("Are you done?");
    print("1-YES    2-NO");
    int? done = int.parse(stdin.readLineSync()!);
    if (done == 1) {
      ordarState == true;
      print(total);
    } else {
      ordarState == false;
    }
  } while (ordarState == false);
  }
}