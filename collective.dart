
void main(){
  //if statement
  bool IsFasting = true;
  if (IsFasting) {
    print("ramadhan karim");
  } else {
    print('alhamdulillah');
  }
  //while statement
  bool IsFree = true;
  while (IsFree) {
    print('come over');
    IsFree = false;
  }
  //do while
  bool isBored = true;
  do {
    print('play pes');
    isBored = false;
  } while (isBored); {
    // print("Hello");
  }
  //for loop
  int list = 100;
  int i = 0;
  for (i = 1; i < list; i++) {
    print(i);
  }
  //switch statement
  int prize = 3;
  switch (prize) {
    case 1: print("Prize of ksh. 1ok");
    break;
    case 2: print("Prize of ksh 5k");
    break;
    default: print("No prize");
    break;
  }
  //Enumerator
  print('${Day.values[0]}');
  print(Day.values.byName('Tuesday'));

  //errror handling
  String localhost = "localhost";
  try {
    print('name: $localhost');
    localhost.indexOf(localhost[0], localhost.length - (localhost.length + 2 ));
  } on Error catch (e) {
    print('On exception: $e');
  } finally {
    print("Mission completed successfully");
  }

  
  lovingMath();


  DateTime timeNow = getCurrentDateTime(0);
  DateTime timeDifference = getCurrentDateTime(-7);
  print('The time now is: $timeNow');
  print('The time minus 7 hours is: $timeDifference');

  printGreetingNamed();
  printGreetingNamed(personName: "Rich");
  printGreetingNamed(personName: "Mary", clientId: 0001);
}

// using optional parameters
void printGreetingNamed({String personName = 'Stranger', int clientId = 999}) {
  if (personName.contains('Stranger')) {
    print('Employee: $clientId Stranger danger');
  } else {
    print('Employee: $clientId $personName');
  }
}


//returning values from functions
DateTime getCurrentDateTime(int hourDifference) {
  DateTime timeNow = DateTime.now();
  DateTime timeDifference = timeNow.add(Duration(hours: hourDifference));
  return timeDifference;
}

// void getCurrentDateTime() {
//   var timeLondon = DateTime.now();
//   print('London: $timeLondon');
// }



void lovingMath() {
  print('*' * 44);
  
}


enum Day {Monday, Tuesday, Wednesday, Thursday, Friday}

