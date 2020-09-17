/*3.i Returning to the Datamatik tab add a setup() function and in this function, create a new object of the type Teacher and give it the name, age and gender of your teacher. 
3.j Also in the setup() function of Datamatik, create two new objects of the type Student. The first one, with your own name, age and gender. The second one with the name, age 
and gender of the student sitting next to you. */

Teacher teacher;
Student student1;
Student student2;

void setup(){

teacher=new Teacher("ABCD",18,true);
student1=new Student("Ruimin",0,true,"DatamatikerTeam");
student2=new Student("William",28,false,"DatamatikerTeam");

/*3.k in the setup() function print the name of the teacher
3.l in the setup() function print the names of both students and which teams they are from. */

println(teacher.name);
println(student1.name+" "+student1.DatamatikerTeam);

println(student2.name+" "+student2.DatamatikerTeam);



}
