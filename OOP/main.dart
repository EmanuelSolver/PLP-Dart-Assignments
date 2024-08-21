//creating a base class
class Person {
  String name;
  int age;

  //constructor
  Person(this.name, this.age);

  void userInfo() {
    print("My name is: $name");
    print("I am $age years old");
  }
}

class Student extends Person {
  var gradeLevel;

  //constructor
  Student(String name, int age, this.gradeLevel) : super(name, age);

  //add something to userInfo
  @override
  void userInfo() {
    print("\t*******Student Info\t*******");
    super.userInfo();
    print("\nI am in grade $gradeLevel");
  }
}


class Teacher extends Person {
  String subject;

  //constructor
  Teacher(String name, int age, this.subject) : super(name, age);

  @override
  void userInfo() {
    print("\t*******Teacher Info\t*******");
    super.userInfo();
    print("\nI teach $subject");
  }
}

class MyInstances {
  void createObjects() {
    Student student1 = Student("Karim", 20, 3); //instance of the student class
    student1.userInfo();

    Teacher teacher1 =
        Teacher("Mr. John", 35, "Mathematics"); //instance of the teacher class
    teacher1.userInfo();
  }
}

void main() {
  MyInstances initObjects = MyInstances();
  initObjects.createObjects();
}
