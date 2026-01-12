import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


// клас для ім'я та прізвища
class Person {

  //приватні поля
  String _firstName;
  String _lastName;
  String _eyeColor;
  String _hairColor;
  String _zodiacSign;
  String _favoriteColor;
  int _height;
  int _age;


//конструктор передавання даних об'єктам
  Person({
    required String firstName,
    required String lastName,
    required String eyeColor,
    required String hairColor,
    required String zodiacSign,
    required String favoriteColor,
    required int height,
    required int age
  })
      : _firstName = firstName,
        _lastName = lastName,
        _eyeColor = eyeColor,
        _hairColor = hairColor,
        _zodiacSign = zodiacSign,
        _favoriteColor = favoriteColor,
        _height = height,
        _age = age;

//гетери
  String get fullName => '$_firstName $_lastName';

  String get eyeColor => _eyeColor;

  String get hairColor => _hairColor;

  String get zodiacSign => _zodiacSign;

  String get favoriteColor => _favoriteColor;

  int get height => _height;

  int get age => _age;

//сетери
  set age(int val) {
    if (val > 0) {
      _age = val;
    }
  }

  set height(int val) {
    if (val > 0) {
      _height = val;
    }
  }

  set eyeColor(String val) {
    if (val.isNotEmpty) {
      _eyeColor = val;
    }
  }

  set hairColor(String val) {
    if (val.isNotEmpty) {
      _hairColor = val;
    }
  }

  set zodiacSign(String val) {
    if (val.isNotEmpty) {
      _zodiacSign = val;
    }
  }

  set favoriteColor(String val) {
    if (val.isNotEmpty) {
      _favoriteColor = val;
    }
  }
}

//частина з UI
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //створюю об'єкт
    final student = Person(

    firstName: "Anastasiia",
    lastName: "Demchuk",
    eyeColor: "Blue",
    hairColor: "Light brown",
    zodiacSign: "Sagittarius",
    favoriteColor: "Pink",
    height: 165,
    age: 19,

  );

    //вигляд програми
     return MaterialApp(
       debugShowCheckedModeBanner: false, // Прибираємо напис "Debug"

    //тема
     theme: ThemeData(
     colorScheme: ColorScheme.fromSeed(
         seedColor: Colors.pink.shade200),
     useMaterial3: true,
     ),

     home: Scaffold(
       // верхня панель
             appBar: AppBar(
               title: const Text("My Profile"), // заголовок
               centerTitle: true, // розташування заголовка по центру
               backgroundColor: Colors.pink.shade100,
             ),

             body: Center(
                 child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // розташування по центру по вертикалі
                     children: [

                   Text(
                   student.fullName,
                   style: const TextStyle(
                     fontSize: 32,
                     fontWeight: FontWeight.bold,
                     color: Colors.black87,
                   ),
                 ),

                 const SizedBox(height: 5), // відступ

                 //лінія для розділення
                 const Divider(
                     color: Colors.pinkAccent,
                     thickness: 1,
                     indent: 50, // відступ зліва
                     endIndent: 50 // і зправа
                 ),

                       const SizedBox(height: 30),

                       // збільшила шрифт і додала відступи між рядками
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Text("Zodiac: ${student.zodiacSign}", style: const TextStyle(fontSize: 22)),
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Text("Height: ${student.height} cm", style: const TextStyle(fontSize: 22)),
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Text("Eyes: ${student.eyeColor}", style: const TextStyle(fontSize: 22)),
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Text("Hair: ${student.hairColor}", style: const TextStyle(fontSize: 22)),
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Text("Favorite Color: ${student.favoriteColor}", style: const TextStyle(fontSize: 22, color: Colors.pink)),
                       ),
                     ],
                 ),
             ),
     ),
     );
  }
}



