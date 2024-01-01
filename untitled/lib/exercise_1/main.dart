/*https://dart.dev/language/variables*/

import 'dart:html';

import 'package:flutter/material.dart';

late String description;

void main() {
  var name = 'Bob';

  Object name1 = 'Bob';

  String? name2; // Nullable type. Can be `null` or string.
  String name3; // Non-nullable type. Cannot be `null` but can be string.

  int? lineCount;
  assert(lineCount == null);

  print(lineCount);

  description = 'Feijoada!';
  print(description);

  //if the temperature variable is never used, then the expensive readThermometer() function is never called:
  late String temperature = readThermometer(); // Lazily initialized.

  final name4 = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  // You can’t change the value of a final variable:
  name4 = 'Alice';

  // Use const for variables that you want to be compile-time constants. If the const variable is at the class level, mark it static const.
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  // You can also use it to create constant values, as well as to declare constructors that create constant values. Any variable can have a constant value.
  var foo = const [];
  final bar2 = const [];
  const baz = []; // Equivalent to `const []`

  // You can change the value of a non-final, non-const variable, even if it used to have a const value:
  foo = [1, 2, 3]; // Was const []

  // You can’t change the value of a const variable:
  baz = [42]; // Error: Constant variables can't be assigned a value.

  //2. Assignment operators

  // Assign value to b if b is null; otherwise, b stays the same
  b ??= value;

  // If the boolean expression tests for null, consider using ??.
  String playerName(String? name) =>
      name ?? 'Guest'; //if name is null set 'Guest'

  // The previous example could have been written at least two other ways, but not as succinctly:
  // Slightly longer version uses ?: operator.
  String playerName1(String? name) => name != null ? name : 'Guest';
  // Very long version uses if-else statement.
  String playerName2(String? name) {
    if (name != null) {
      return name;
    } else {
      return 'Guest';
    }
  }

  // Cascade notation
  // Cascades (.., ?..) allow you to make a sequence of operations on the same object.
  var paint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5.0;

  // If the object that the cascade operates on can be null, then use a null-shorting cascade (?..) for the first operation.
  querySelector('#confirm') // Get an object.
    ?..text = 'Confirm' // Use its members.
    ..classes.add('important')
    ..onClick.listen((e) => window.alert('Confirmed!'))
    ..scrollIntoView();

  // The previous code is equivalent to the following:

  var button = querySelector('#confirm');
  button?.text = 'Confirm';
  button?.classes.add('important');
  button?.onClick.listen((e) => window.alert('Confirmed!'));
  button?.scrollIntoView();

  /// 3. Collections
  var list = [1, 2, 3];
  var listString = [
    'Car',
    'Boat',
    'Plane',
  ];

  // To create a list that’s a compile-time constant, add const before the list literal:
  var constantList = const [1, 2, 3];
  constantList[1] = 1;

  // 3.2 Set
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // To create an empty set, use {} preceded by a type argument, or assign {} to a variable of type Set:
  var names = <String>{};
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.

  // Add items to an existing set using the add() or addAll() methods:

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
// constantSet.add('helium'); // This line will cause an error.

  // 3.3 Maps
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // You can create the same objects using a Map constructor:

  var gifts1 = Map<String, String>();
  gifts1['first'] = 'partridge';
  gifts1['second'] = 'turtledoves';
  gifts1['fifth'] = 'golden rings';

  //3.4 Spread operators
  // Dart supports the spread operator (...) and the null-aware spread operator (...?) in list, map
  // you can use the spread operator (...) to insert all the values of a list into another list:
  var list3 = [1, 2, 3];
  var list2 = [0, ...list3];
  assert(list2.length == 4);

  // If the expression to the right of the spread operator might be null, you can avoid exceptions by using a null-aware spread operator (...?):
  var list4 = [0, ...?list3];
  assert(list4.length == 1);

  // Dart also supports if-case inside collection literals:
  var promoActive;
  var nav1 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  var login;
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];

  // 4.Generics
  /*abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
  }

  abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
  }

//with generics
  abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
  }*/
}
