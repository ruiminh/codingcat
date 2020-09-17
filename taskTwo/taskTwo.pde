//a Look at the file TaskTwoA and fill out the missing line, using the happy boolean.
boolean happy = true;

void setup() {
   if (iAmHappy())
   {
     println("I clap my hands");
   }
   else
   {
     println("I don't clap my hands"); 
   }
}


boolean iAmHappy()
{
  // fill out what is missing here: 
  boolean happy=false;
  // fordi I am never happy:)
  
}

//b Write a function that receives to integers as parameters and returns the sum of them.

int sum(int a, int b){
  int a1=a;
  int a2=b;
  return a+b;
}

/*c Write a function that receives a string and returns it as uppercase. 
(Hint: ".toUpperCase()". Further hint: https://www.w3schools.com/jsref/jsref_toUpperCase.asp )*/

String Upper(String a){
  String x=a;
  return x.toUpperCase();

}

/*d Write a function that receives a string and returns true 
if the first letter of the string is uppercase. 
(Hints: ".charAt(0)" and "Character.isUpperCase('a');" ) */

Boolean isUpp(String a){
   String x=a;
   char y=a.charAt(0);
   return (Character.isUpperCase(y));
}
