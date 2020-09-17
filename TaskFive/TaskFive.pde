//Create an array of Students (the class created in Task 3) with 10 elements in it. Each student must have a unique name.

Student[]students=new Student[10];

String[] difName={"apple","banan","cheese","dong","egg","fart","gozila","honey","icecream","jet","kick"};


void setup(){
for (int i=0; i<students.length;i++){
  students[i]=new Student(difName[i],25,false,"DatamatikerTeam" );
}
   getName(students,3);
   
   int ind=getIndex(students,"gozila");
   println (ind);
}
/*5.b Create a function that takes in the array from 5.a as a parameter as well as an integer. 
The function should return the field "name" (the name of the student) and print it.
Call this method with different parameters (only the integer - not the array) from the setup() of Datamatik.*/

String getName(Student[] x_, int y_){
   Student[] x=x_;
   int y=y_;
    println(x[y].name);
    return x[y].name;
    
}


//5.c Create a similar function to that of 5.b, but instead of receiving the array and an integer, it receives the array and a string. 
//Loop through all elements in the array until you find the element with the name received as a parameter. 
//Then return the index of that student. Call this method with different names from the setup() of Datamatik


int getIndex(Student[] x_, String y_){
     int index=10000;
     Student[] x=x_;
     String y=y_;
     for(int i=0;i<x.length;i++){
       if(x[i].name==y){
       index= i;
       }
       
     }
   return index; 
}
