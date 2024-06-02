<h1 align="center"> Factory Constructor & Modal Class </h1>

# 1. Factory Constructor

# Defination

Ans-> A Factory Constructor is defined within a class to provide more flexible and controlled object creation.<br>
    -> Factory Constructor is current class object reture.

# Advantages

Ans.<br>
->Provides more control over object creation, which can be used to enforce singleton patterns or manage object pools.<br>
->Encapsulates the creation logic, making it easier to change without affecting the client code.<br>
->Allows for the implementation of lazy initialization, where objects are created only when needed.

# Disadvantages


Ans.<br>
->Adds complexity to the code, making it harder to read and understand, especially for beginners.<br>
->The logic inside the factory constructor can add a slight performance overhead compared to direct instantiation.

# Example

```
import 'factory.dart';
class PersonModel
{
  late String name,course;
  late int roll;

 PersonModel({required this.name,required this.course,required this.roll});

 factory PersonModel.yashu({required  Person})
 {
  return PersonModel(
    name: Person['name'],
    roll: Person['roll'],
    course: Person['course'],
  );
 }
}
List<Map> mansa = 
[
  {'name' : 'yashu', 'course' : 'GIM', 'roll' : 18},
  {'name' : 'Hiren', 'course' : 'GIM', 'roll' : 19},
  {'name' : 'Ankit', 'course' : 'GIM', 'roll' : 20},
  {'name' : 'rohan', 'course' : 'GIM', 'roll' : 21},
  {'name' : 'yashu', 'course' : 'GIM', 'roll' : 18},

List object = [];
void main()
{
  for(int i=0; i<mansa.length; i++)
  {
    PersonModel p1 = PersonModel.yashu(Person: mansa[i]);
    object.add(p1);
  }

  for(int i=0; i<object.length; i++)
  {
    print('Name: ${object[i].name}' + ' Course: ${object[i].course}' + ' roll: ${object[i].roll}');
  }

  
}
```

# 2. Modal Class

# Defination

Ans.->Methods for creating instances of the class.

 
