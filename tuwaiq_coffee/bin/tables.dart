import 'dart:io';

class Tables {
  int countIndoor = 0;
  int countOutdoor = 0;

  void manageTables() {
    print(
        "Barista: Do you want to sit indoor, outdoor, or would you like to takeaway?");
    String? choice = stdin.readLineSync()?.toLowerCase();

    switch (choice) {
      case 'takeaway':
        print("You chose takeaway.");
        break;
      case 'indoor':
        if (countIndoor < 8) {
          countIndoor++;
          print(
              "Your indoor table is ready. Number of indoor tables occupied: $countIndoor");
        } else {
          print("We are sorry, there are no indoor tables available now.");
        }
        break;
      case 'outdoor':
        if (countOutdoor < 5) {
          countOutdoor++;
          print(
              "Your outdoor table is ready. Number of outdoor tables occupied: $countOutdoor");
        } else {
          print("We are sorry, there are no outdoor tables available now.");
        }
        break;
      default:
        print(
            "Invalid choice. Please enter 'indoor', 'outdoor', or 'takeaway'.");
    }
  }
}
