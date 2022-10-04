//dart:core
int meaningOfLife = 42;
double valueOfPi  = 3.141592;
bool visible      = true;

String shakespeareQuote = "All the world's a stage, ...";

var moreShakespeare = StringBuffer();
moreShakespeare.write('And all the men and women ');
moreShakespeare.write('merely players; ...');

bool isPalindrome(String text) => text == text.split('').reversed.join();

var numbers = RegExp(r'\d+');

var superheroes = ['Batman', 'Superman', 'Harry Potter'];

var villains = {'Joker'};
print(villains.length); // 1
villains.addAll(['Joker', 'Lex Luthor', 'Voldemort']);
print(villains.length); // 3

var sidekicks = {'Batman': 'Robin',
                 'Superman': 'Lois Lane',
                 'Harry Potter': 'Ron and Hermione'};

var now = DateTime.now();
var berlinWallFell = DateTime(1989, 11, 9);
var moonLanding = DateTime.parse("1969-07-20");

var timeRemaining = const Duration(hours: 56, minutes: 14);

var dartlang = Uri.parse('http://dartlang.org/');

//dart:async
import 'dart:async';

 HttpServer.bind('127.0.0.1', 4444)
     .then((server) => print('${server.isBroadcast}'))
     .catchError(print);

Stream<List<int>> stream = File('quotes.txt').openRead();
stream.transform(utf8.decoder).forEach(print);

querySelector('#myButton')!.onClick.forEach((_) => print('Click.'));