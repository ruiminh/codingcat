//5.a solve the problem presented in MethodOne.



void setup() {
  MethodOne(); 
  MethodTwo(); 
}

/*
  The following method has an error in it. Fix the error and run it. 
*/

void MethodOne()
{
  int i = 1000; // You are not allowed to change this line. 
  
  int max = 10;
  
  String output=" is great than ";
  
  if (i > max)
  {
    println(i+output+max);  
  }
   
}

/* 
  Finish the following method so that we can change the number assigned 
  to the weekday and it prints the correct output.  
*/
void MethodTwo() 
{
  int weekDay = 0; // 0 = Monday, 6 = Sunday. 
  boolean weekend = false;
  
  if (weekDay < 5)
  {
    weekend = false;
  }
  else 
  {
    weekend = true;
  }
  
  // Print the name of the weekday here: 
  
    println(weekDay);
    
  // Print if it is weekend here:
  if (weekend) println(weekDay+" is weekend");
  if (!weekend) println(weekDay+" is not weekend");
}