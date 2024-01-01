// class

    /*class Employee {
      int? empID;
      String? empName;
      String? empDept;

      Employee.ID(this.empID); // Named Constructor Creation

      Employee.name(this.empName);

      Employee.department(this.empDept);
    }

    main() {
      var myEmployee01 = Employee.ID(15);
      var myEmployee02 = Employee.department("Testing");
      var myEmployee03 = Employee.name("Ashu");

      print(myEmployee01.empID);
      print(myEmployee02.empDept);
      print(myEmployee03.empName);
    }*/




class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  print("shubham state -> ${rect.right}");
  print("shubham state -> ${rect.bottom}");
  print("shubham state -> ${rect.top}");
  rect.bottom = 21;
  print("shubham state -> ${rect.top}");
  assert(rect.left == -8);
}