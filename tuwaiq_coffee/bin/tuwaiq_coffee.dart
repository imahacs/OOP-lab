import 'tables.dart';
import 'dart:io';
import 'menu.dart';

Tables t1 = Tables();
void main(List<String> arguments) {
  print("-------------------------");
  print("Welcome to coffee system");
  print("-------------------------");
  print("I am your Paresta for today how can i help you?");
  print("what is your name?");
  String? username = stdin.readLineSync();
  print("Hello $username nice to meet you");
  print("1-new order");
  print("2-Display my order");
  int? input = int.parse(stdin.readLineSync()!);

  // Create an instance of CoffeeShopMenu
  Menu menu = Menu();

  switch (input) {
    case 1:
      menu.myMenu();
  }
}
