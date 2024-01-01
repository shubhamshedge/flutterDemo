mixin Swimming {
  void swim() {
    print('Swimming...');
  }
}

mixin Flying {
  void fly() {
    print('Flying...');
  }
}

/*
class Duck with Swimming, Flying {
// Duck has access to swim() and fly() methods
}

class Fish with Swimming {
  // Fish has access to swim() method
}

void main() {
  Duck duck = Duck();
  duck.swim(); // Output: Swimming...
  duck.fly(); // Output: Flying...

  Fish fish = Fish();
  fish.swim(); // Output: Swimming...
}
*/


class Animal {
  void eat() {
    print('Eating...');
  }
}

mixin Carnivore on Animal {
  void hunt() {
    print('Hunting...');
    eat(); // Accessing the eat() method from the Animal superclass
  }
}

class Lion extends Animal with Carnivore {
  // Lion has access to eat() and hunt() methods
}

class Plant {
  void grow() {
    print('Growing...');
  }
}

class Tree extends Animal /*Plant*/ with Carnivore {
  // Error: Carnivore mixin can only be used with Animal superclass
}

enum Color { red, green, blue }

void main() {
  Lion lion = Lion();
  lion.hunt(); // Output: Hunting... \n Eating...

  Tree tree = Tree(); // Error: Type 'Tree' does not conform to the required superclass 'Animal' of mixin 'Carnivore'
}