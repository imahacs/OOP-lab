import 'dart:io';
import 'menu.dart';
import 'pilpay.dart';
import 'tables.dart';

void main(List<String> arguments) {
  print("-------------------------");
  print("Welcome to the Tuwaiq coffee !");
  print("-------------------------");

  // Get user name
  print("What is your name?");
  String? username = stdin.readLineSync();
  print("Hello $username, nice to meet you!");

  // Display options
  print("Barista: I am your Barista for today. How can I help you?");
  print("1 - New order");
  print("2 - Display my order");

  int? input = int.tryParse(stdin.readLineSync()!);
  if (input == null || (input != 1 && input != 2)) {
    print(
        "Invalid input. Please enter 1 for New order or 2 to Display my order.");
    return;
  }

  // Create instances of classes
  Menu menu = Menu();
  PilPayment payment = PilPayment();
  Tables tables = Tables();

  // User input handling
  if (input == 1) {
    menu.myMenu();
    payment.showPaymentOptions();
    int choice = int.tryParse(stdin.readLineSync()!) ?? -1;
    payment.selectPaymentMethod(choice);
    payment.displayPaymentMethod();
    tables.manageTables();
    print("Thank you for your order, $username!");
  } else {
    print("Displaying your order is not yet implemented.");
  }
}
