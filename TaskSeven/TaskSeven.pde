/*7.a create an integer called input and assign it a value of 20. use a loop to print the value and all values from there, until it reaches 0, with the following exceptions:
if the number is 6, instead print the string "six".
Once the number is half of the input value, print "HALF!"
*/
for (int input=20; input>10; input+=-1) {
print(input+" ");
}
println("HALF!");
for (int input=9; input>6; input+=-1){
  print (input+" ");

}
print (" six ");
for (int input=5; input>0; input+=-1){
  print (input+" ");

}
println();


//7.b Run exercise 7.a again with a different input value and make sure it still works. You should also consider if it will work with a negative input, e.g. -20.
int n=-30;

if (n>=0){

for (int input=n; input>n/2; input+=-1) {
print(input+" ");
}
println("HALF!");
for (int input=n/2-1; input>6; input+=-1){
  print (input+" ");

}
print (" six ");
for (int input=5; input>0; input+=-1){
  print (input+" ");
}
println();
} else {
for (int input=n; input<n/2; input+=1) {
print(input+" ");
}
println("HALF!");
for (int input=n/2-1; input<0; input+=1){
  print (input+" ");

}



}
