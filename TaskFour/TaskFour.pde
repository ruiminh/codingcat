/*   4.a Write a method that takes in an integer as a parameter and prints all values 

       between 0 and 100 that are divisible by the parameter received.*/
void divisibleBy(int a){
 for(int i=1;i<=100;i++){
   if(i%a==0) println(a);
 }
}
    
/*b add the following array to your code: 
int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 }*/

int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };
//4.c Write a method that returns a random element from the above array.

int randomElement(int[] nums){
  int x=int(random(0,nums.length));
  return nums[x];
}

/*4.d Write a function that takes an integer as a parameter and prints the number. 
After that, it subtracts one from the input and calls itself again (recursion). 
If the input is less than zero, it should no longer call itself.*/
void wierdFun(int a){
 println(a);
 a=a-1;
 if(a>0){
   wierdFun(a);
 }
}

/*4.e Write a function that takes two integers as parameters and prints both of them seperated by a tab ( \t ). 
Then have the function calculate and print the fibunacci sequence by calling itself. 
If the input is greater than 10000, then stop. 
Start the function by calling it from setup with the input (1, 1). 
(hint: fibunacci sequence: https://i.pinimg.com/236x/98/82/d5/9882d569f7e0b5665fe3b2edd5069b06.jpg )
*/

void fib1(int a, int b){
  println(a+" \t"+b);
  int x=a+b;
  println(a+b);
  if (x<1000){
    a=b;
    b=x;
    fib1(a,b);
  }
  
}
