/* 
 * @author Kashikizu
 * Initial Completion Date: 27/03/2024 (dd/mm/yyyy)
 */

import 'dart:math';

void main() {
  Generator gen = Generator(); //Starts generating names
  gen.ocd();
}

class Generator extends NameList { //Main name generator
  Generator() {
    int n = Random().nextInt(10); //Number of names to be genned
    if (n == 0) {
      print("No names were generated");
    } else {
      print("$n names were generated");
      for (int i = 0; i < n; i++) {
        int sex = Random().nextInt(6969) % 2; //Determines name type
        if (sex == 0) {
          nameGen(i + 1, firstFemaleNames, lastNames);
        } else {
          nameGen(i + 1, firstMaleNames, lastNames);
        }
      }
    }
  }

  void nameGen(int ser, var firstName, lastName) { //Gets the name
    int fnIndex = Random().nextInt(6969) % 21;
    int lnIndex = Random().nextInt(6969) % 21;
    String name = firstName[fnIndex] + ' ' + lastName[lnIndex];
    print("Name number $ser: $name");
  }
}

class NameList {
  var firstMaleNames = {
    0: 'Daniel',
    1: 'James',
    2: 'Robert',
    3: 'John',
    4: 'Michael',
    5: 'David',
    6: 'William',
    7: 'Richard',
    8: 'Joseph',
    9: 'Thomas',
    10: 'Christopher',
    11: 'Charles',
    12: 'Matthew',
    13: 'Anthony',
    14: 'Mark',
    15: 'Donald',
    16: 'Steven',
    17: 'Andrew',
    18: 'Paul',
    19: 'Joshua',
    20: 'Kenneth',
  };
  var firstFemaleNames = {
    0: 'Lisa',
    1: 'Karen',
    2: 'Sarah',
    3: 'Jessica',
    4: 'Susan',
    5: 'Barbara',
    6: 'Elizabeth',
    7: 'Linda',
    8: 'Jennifer',
    9: 'Patricia',
    10: 'Mary',
    11: 'Nancy',
    12: 'Betty',
    13: 'Sandra',
    14: 'Margaret',
    15: 'Ashley',
    16: 'Kimberly',
    17: 'Emily',
    18: 'Donna',
    19: 'Michelle',
    20: 'Carol'
  };
  var lastNames = {
    0: 'Smith',
    1: 'Johnson',
    2: 'Williams',
    3: 'Brown',
    4: 'Jones',
    5: 'Garcia',
    6: 'Miller',
    7: 'Davis',
    8: 'Rodriguez',
    9: 'Martinez',
    10: 'Hernandez',
    11: 'Lopez',
    12: 'Gonzales',
    13: 'Wilson',
    14: 'Anderson',
    15: 'Thomas',
    16: 'Taylor',
    17: 'Moore',
    18: 'Jackson',
    19: 'Martin',
    20: 'Lee'
  };

  NameList() {}

  void ocd() {
    print("");
  }
}
