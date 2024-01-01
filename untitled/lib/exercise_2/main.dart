//Functions


// Passing Parameters:
// We can pass parameters to Dart function like in any other programming language.
/*void main() {
  int additionFunction(int a, int b) => a + b;
  print(additionFunction(100, 200));
}*/

// 1.2 Anonymous Functions:
// Anonymous functions are mostly used as callback functions. The functions that we have seen earlier have names to it and we
// can invoke them using its name. Anonymous functions usually gets triggered when some event happens, such as when user clicks on a button
// or when we iterate through a list using map method, we run an anonymous function (though we can pass named functions also, mostly we use anonymous functions) .
// Sometimes we use anonymous functions to store a function into a variable.

    /*void main() {
      Function(int, int) additionFunction = (int a, int b) {
        return (a + b);
      };
      print(additionFunction(100, 200));

      var myList = [1, 2, 3, 4];

      var result = myList.map((e) {
        return e + e;
      });
      print(result);
    }*/

// Similar to the way we used arrow syntax with named functions, we can use the same for anonymous functions also.
// The previous example can be re-written with arrow syntax like this

     /*
      void main() {
        Function(int, int) additionFunction = (int a, int b) => (a + b);
        print(additionFunction(100, 200));

        var myList = [1, 2, 3, 4];

        var result = myList.map((e) => e + e);
        print(result);
      }*/

// 1.3 Function Parameters:
// If we pass the parameters like we did earlier, then all of those parameters are going to be Required Parameters.
// That means, we must pass all these parameters during a function call, else Dart will show us an error similar to this
// “2 positional argument(s) expected, but 1 found.”

// 1.3.1 Named Parameters:
// When we work with functions with required parameters, we must pass the parameters in the same order. If we are passing many parameters, then it may confuse the developer.
    /*void main() {
      void myFunction(int id, String name, String city, String country, int pin,
          String street, String phone) {}

      myFunction(123, 'John', 'NYC', 'US', 10001, 'ABC', '+1-34234');
    }*/

// One thing to note with Named parameters is that, they are by default optional. If we want to use them to replace required parameters, then we need to add the required keyword.

    /*
    void main() {
      void myFunction(
          {required int id,
            required String name,
            required String city,
            required String country,
            required int pin,
            required String street,
            required String phone}) {}

      myFunction(
          id: 123,
          name: 'John',
          street: 'ABC',
          pin: 10001,
          city: 'NYC',
          country: 'US',
          phone: '+1-34234');
    }*/

// 1.3.2 Optional Named Parameters:
// As we discussed before, named parameters are optional by default. If you do not pass a value to a named parameter, Dart will automatically assign null value to that parameter.

    /*void main() {
      void myFunction(
          {required int id,
            required String name,
            required String city,
            String? country,
            int? pin,
            required String street,
            String? phone}) {}

      myFunction(
        id: 123,
        name: 'John',
        city: 'NYC',
        street: 'ABC',
      );
    }*/

// In the above example, we made country, pin and phone parameters as optional by removing required and adding ? to the type.
// When we are dealing with optional parameters, it is better to do a null check on these parameters before trying to access them.
    /*if( country != null ) {
    print(country);
    } else {
    country = 'US';
    }*/

// 1.3.4 Optional Positional Parameters
// We can also receive optional parameters without needing to enter names by using Positional Parameters syntax. Similar to optional named parameters,
// if we do not pass a value to positional parameters, Dart will automatically assign null value to them.

      /*
      void main() {
        int myFunction([int? a, int? b]) {
          a = a ?? 100;
          b = b ?? 200;
          return a + b;
        }

        print(myFunction(111, 222));
        print(myFunction(123));
        print(myFunction());
      }*/

// 1.3.5 Default Values:
      /*
      void main() {
        int myFunction({int a = 100, int b = 200}) {
          return a + b;
        }

        print(myFunction(a: 111, b: 222));
        print(myFunction(a: 111));
        print(myFunction());
      }*/

// 1.3.6 Combining Required and Optional Parameters
/*void main() {
  int myFunction(int a, int b, [int? c, int? d]) {
    c = c ?? 100;
    d = d ?? 200;
    print(a.toString()  + "-" +  b.toString() +"-"+ c.toString() +"-"+ d.toString());
    return a + b + c + d;
  }

  print(myFunction(111, 222, 333, 444));
  print(myFunction(111, 222, 333));
  print(myFunction(111, 222));
}*/

// Similarly we can receive required parameters with optional named parameters.


void main() {
  int myFunction(int a, int b, {int? c, int? d}) {
    c = c ?? 100;
    d = d ?? 200;
    print("$a-$b-$c-$d");
    return a + b + c + d;
  }

  print(myFunction(111, 222, c: 333, d: 444));
  print(myFunction(111, 222, d: 333));
  print(myFunction(111, 222));
}

// difff between
// int myFunction({int a = 100, int b = 200})
// int myFunction([int a = 100, int b = 200])
/* 1. int myFunction({int a = 100, int b = 200}): This syntax uses curly braces {} to define named parameters. When calling this function, you would pass values by explicitly naming the parameters, like myFunction(a: 50, b: 75). The default values are set to 100 for a and 200 for b.

   2. int myFunction([int a = 100, int b = 200]): This syntax uses square brackets [] to define positional parameters. When calling this function, you would pass values in the order in which the parameters are defined, like myFunction(50, 75). The default values are set to 100 for the first parameter (a) and 200 for the second parameter (b).

In summary:

The first syntax uses named parameters with curly braces.
The second syntax uses positional parameters with square brackets.*/


