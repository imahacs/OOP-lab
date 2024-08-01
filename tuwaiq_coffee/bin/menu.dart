import 'dart:io';

class Menu {
  void myMenu() {
    bool orderState = false;
    print("------------------------------");
    print("-----------Menu---------------");
    print("------------------------------");
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

    num total = 0;

    do {
      print("Please enter the number of your order:");
      int? order = int.tryParse(stdin.readLineSync()!);
      if (order == null || order < 1 || order > 9) {
        print("Invalid choice, please select a number from 1 to 9.");
        continue;
      }

      switch (order) {
        case 1:
          total += 10;
          break;
        case 2:
          total += 12;
          break;
        case 3:
          total += 15;
          break;
        case 4:
          total += 15;
          break;
        case 5:
          total += 18;
          break;
        case 6:
          total += 10;
          break;
        case 7:
          total += 12;
          break;
        case 8:
          total += 8;
          break;
        case 9:
          total += 25;
          break;
      }

      print("Are you done?");
      print("1-YES    2-NO");
      int? done = int.tryParse(stdin.readLineSync()!);
      if (done == 1) {
        orderState = true;
        print("Your total is: $total SR");
      } else if (done == 2) {
        orderState = false;
      } else {
        print("Invalid input, please enter 1 for YES or 2 for NO.");
      }
    } while (orderState == false);
  }
}
