//1.a Create an integer array with the values { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 }
int []arr={8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};
//1.b implement your own sorting algorithm for the int[] array, by creating a method that takes in the int[] array and loops through it with a for loop. 
//for every step in the for loop, you must compare the values of array[i] and array[i + 1] and swap them if [i] is greater than [i + 1]. 

void sortArr(int[] nums) {
  if (!done(nums)) {
    for (int i=0; i<nums.length-1; i++) {
      int tmp=0;
      if (nums[i]>nums[i+1]) {
        tmp=nums[i];
        nums[i]=nums[i+1];
        nums[i+1]=tmp;
      }
    }
  } else {
    noLoop();
  }
  println(nums);
}





//1.c call the method created in 1.b in a while loop from setup(), until the list is sorted. 

void setup(){
  size(100,100);
  int k=0;
  while (!done(arr)){
  sortArr(arr);
  }
  k=k+1;
}
//1.d Add a boolean to keep track of when the list is sorted to avoid creating an infinite loop.

boolean done(int[] a) {
  for (int j=0; j<a.length-1; j++) {
    if (a[j]>a[j+1]) return false;
  }
  return true;
}
