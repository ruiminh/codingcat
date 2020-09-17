void setup(){
 println();//a Write a function that prints an empty line and call it from setup();
 printSth("Hello world");
 tellAge("Ruimin",0);
}

//b Write a function that receives a string as a parameter and prints it. call this function from setup()
void printSth(String sth){
  String a=sth;
  println(a);
}

//c Write a function that receives a string called "name" and an integer called "age" and call it from setup with your own name and age. Have the function print the text "My name is \<name\>, I am <age> years old".

void tellAge(String name, int age){
  String a=name;
  int b=age;
  println("my name is "+a+" I am "+age+" years old.");
}
