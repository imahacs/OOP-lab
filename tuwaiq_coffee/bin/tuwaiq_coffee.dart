import 'dart:io';
import 'menu.dart';
// import 'package:tuwaiq_coffee/tuwaiq_coffee.dart' as tuwaiq_coffee;

void main(List<String> arguments) {
  print("-------------------------");
  print("Welcome to coffe system");
  print("-------------------------");
  print("I am your paresta for today how can i help you?");
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

// class Menu{
}
