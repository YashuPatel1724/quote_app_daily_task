
https://github.com/YashuPatel1724/quote_app_daily_task/assets/148859965/046efe22-6efe-429e-afde-98d39755f535
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


 <h1 align="center">👉 Random Quotes 👈</h1>

<h3 align="center">Random Quotes Video </h3>
<div align="center">
 <video src="https://github.com/YashuPatel1724/quote_app_daily_task/assets/148859965/35c4870e-ee39-4cb1-82be-bf29694b5547"> 
</video>
</div>

<h3 align="center">1. Random Quotes </h3>

<h1 align="left"></h1>

<div align="center">
  <img height="550"  src="https://github.com/YashuPatel1724/quote_app_daily_task/assets/148859965/a709c252-21d5-40d8-b14b-153447fbef48" />
  <img height="550"  src="https://github.com/YashuPatel1724/quote_app_daily_task/assets/148859965/867831d9-56bf-4ce7-a3ef-3e12227a7f52" />
</div>
<div align="center">
<a href="https://github.com/YashuPatel1724/quote_app_daily_task/tree/master/lib">-> 📂 Go To Dart File 📂 <-</a>
</div>

 <h1 align="center">👉 Toggle View 👈</h1>

<h3 align="center">Toggle View Video </h3>
<div align="center">
 <video src="https://github.com/YashuPatel1724/quote_app_daily_task/assets/148859965/c2f2d105-7126-43fb-a748-3b6800a91829"> 
</video>
</div>

<h3 align="center">2. Toggle View </h3>

<h1 align="left"></h1>

<div align="center">
  <img height="550"  src="https://github.com/YashuPatel1724/quote_app_daily_task/assets/148859965/cfb89d13-47e0-4e95-8814-132df0cd213e" />
  <img height="550"  src="https://github.com/YashuPatel1724/quote_app_daily_task/assets/148859965/01e004db-c530-4ac8-8578-81a1de53a554" />
</div>
<div align="center">
<a href="https://github.com/YashuPatel1724/quote_app_daily_task/tree/master/lib/random%20quot/togal%20view">-> 📂 Go To Dart File 📂 <-</a>
</div>

