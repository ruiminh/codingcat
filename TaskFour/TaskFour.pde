/*For all exercises in Task 4, you are allowed to complete them with arrays of a fixed size. 
But do consider how the functions you write in 4.b, 4.c, 4.d, 4.e would work, if the array received as a parameter would not have a fixed length. 
4.a create arrays of the following type and assign it at least 3 different values: 
    - Integer array
    - String array
    - boolean array*/
void setup(){    
    int[] nums={5,6,7};
     
    
    String[] x={"abc","def","ghi"};
    
    
    boolean[] y={true,false,false};
   
}
    
//4.b Write a function that takes in an array of strings as parameter and prints each string.

void printArr(String[] x){
  for(int i=0;i<x.length;i++) {
    print( x[i]);
  }

}

//4.c Write a function that receives an integer array as a parameter and returns the sum of all elements in the array.

int sum(int[]nums){
  int a=0;
 for(int i=0;i<nums.length;i++) {
   a=a+nums[i];

 }
   return a;

}


//4.d Write a function that receives an integer array as a parameter and returns the average value.  
int average(int[]nums){
  int b=0;
 for(int i=0;i<nums.length;i++) {
   b=b+nums[i];   
}
 return b/nums.length;
 }




//4.e Consider how you could write a function that takes in an integer array as a parameter and returns the array sorted from lowest to highest value.
