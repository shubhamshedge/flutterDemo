import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/counter.dart';

//unit testing
void main(){
  test("Counter value should be incremented", () {
    final counter = Counter();
    counter.increment();
    expect(counter.value, 1);
  });

  test("Counter value should be decremented", () {
    final counter = Counter();
    counter.decrement();
    expect(counter.value, -1); // test case fail when return 1
  });

  //combine multiple test cases using group
  // run test cases 1. flutter test test/counter_test.dart 2.flutter test --plain-name "Test start, increment, decrement"
  group("Test start, increment, decrement", () {
    //test case 1
    test('value should start at 0', () {
      expect(Counter().value, 1);
    });

    // test case 2
    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    //test case 3
    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}