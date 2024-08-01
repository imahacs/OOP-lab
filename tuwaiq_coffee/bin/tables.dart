import 'dart:io';

class Tables {
  tables() {
    int countIndoor = 0;
    int countOutdoor = 0;

    print(
        "parista : Do you want to set indoor or outdoor or you want to takeaway ?! ");
    String? set = stdin.readLineSync();
    switch (set) {
      case 'takeaway':
        break;
      case 'indoor':
        if (countIndoor <= 8) {
          print("your table indoor  is ready  ");
        } else {
          print("We are sorry there is no indoor table now avilable");
        }

        countIndoor++;
        break;
      case 'outdoor':
        if (countOutdoor <= 5) {
          print("your table outdoor is ready  ");
        } else {
          print("We are sorry there is no outdoor table now avilable");
        }

        countOutdoor++;
        break;

      // default:
    }
  }
}
