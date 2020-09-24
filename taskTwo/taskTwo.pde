/*
// debug1
void setup() 
{
    MyClass myclass = new MyClass();    
}
public class MyClass {//fjerne ()
    
    public MyClass()
    {
        println("Jobs done!"); 
    }
}
*/

/* debug2
// arbejde ikke i setup
void draw(){
   println("Jobs done!"); 
   noLoop();
}
*/

/* debug 3; isJobDone return type
void setup()
{
    if (isJobDone())
    {
        println("Job's done!");   
    }
}

boolean isJobDone()
{
    return true;    
}
*/
/* debug 4  ()efter isJobDone, fordi det er funktion.
boolean jobsDone = true;

void setup()
{
    if (isJobDone())
    {
        println("Job's done!");   
    }
}

boolean isJobDone()
{
    return jobsDone;    
}
*/

/* debug 5, mangler en simicolon
boolean jobsDone = true;

void setup()
{
    if (isJobDone())
    {
        println("Job's done!") ;
    }
}

boolean isJobDone()
{
    return jobsDone;    
}

*/

/* debug 6 convert float to int

boolean jobsDone = true;

void setup()
{
    
    println(getRandomNumber(0, 10));
    if (isJobDone())
    {
        println("Job's done!");   
    }
}

boolean isJobDone()
{
    return jobsDone;    
}

int getRandomNumber(int min, int max) 
{
    return (int)random(min, max);
}


*/

/*
debug 7  declare type of sum and sum=0

boolean jobsDone = true;

void setup()
{
    int [] myArray = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    println(getSumOfElementsInArray(myArray));
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

int getSumOfElementsInArray(int[] arr) 
{
  int sum=0;
    for (int i = 0; i < arr.length; i++)
    
    {
        sum += arr[i];
    }
    return sum;
}

boolean isJobDone()
{
    return jobsDone;    
}
*/

/*
debug 8, mangler return false

boolean jobsDone = true;

void setup()
{
    println(isValueGreaterThanThreshold(10, 5));
    println(isValueGreaterThanThreshold(4, 8));
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

boolean isValueGreaterThanThreshold(int value, int threshold) 
{
    if (value > threshold) 
    {
        return true;                
    }
    return false;
}

boolean isJobDone()
{
    return jobsDone;    
}
*/

/*
debug 9  i<arr.length

boolean jobsDone = true;

void setup()
{
    int myArray[] = { 9, 8, 7, 6, 5, 4, 3, 2, 1};
    print(getSumOfAllElementsInArray(myArray));
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

boolean isJobDone()
{
    return jobsDone;    
}

int getSumOfAllElementsInArray(int[] arr) 
{
    int sum = 0; 
    for (int i = 0; i < arr.length; i++)
    {
        sum += arr[i];
    }
    return sum;
}
/*
debug 10, take away void draw

boolean jobsDone = true;

void setup()
{
    size(1000,1000);
    drawGrid(15, 15, 40);
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}





boolean isJobDone()
{
    return jobsDone;    
}



void drawGrid(int numberOfHorizontalCells, int numberOfVerticalCells, int cellSideLength)
{
    for (int x = 0; x < numberOfHorizontalCells; x++)
 {   
        for (int y = 0; y < numberOfVerticalCells; y++)
        {
            if (x == 5 && y == 8)
            {
                fill(255,0,0);
            }
            
            else
            {
                fill(255);
            }
            rect(x * cellSideLength, y * cellSideLength, cellSideLength, cellSideLength);  
            
        }
    }
}

*/

*/
