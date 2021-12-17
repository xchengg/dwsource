int arr[];
int pos; //the current spot we want to find
int smallPos; //the position of the smallest element we've found so far
int testPos; //the current position we are testing

void setup() {
  size(400, 400);
  background(0);
  arr = randomArray(20);

  pos = 0;
  testPos = pos + 1;
  smallPos = 0;

}//setup


void draw() {
  background(0);
  //if pos == length - 1, then we're sorted! display
    displayArray(arr, -1, -1, -1);
    
  //else 
     //displayArray(arr, pos, testPos, smallPos);
    //compare elements at testPos and smallPos
    //if testPos element < smallPos element, update smallPos
    
    //move testPos over 1
    
    //if testPos == length of the array
      //swap(pos, smallPos)
      //move pos over by 1
      //set testPos to pos + 1
      //set smallPos to pos
  
  
  
  
}//draw


void swap(int[] arr, int i0, int i1) {
  int t = arr[i0];
  arr[i0] = arr[i1];
  arr[i1] = t;
}//swap

int[] randomArray(int num) {
  int[] values = new int[num];

  for (int i=0; i<values.length; i++) {
    values[i] = int(random(100, 400));
  }//random value loop
  return values;
}//randomArray

void displayArray(int[] arr, int p, int tp, int sp) {
  int barWidth = width / arr.length;
  int x = 0;
  int y = 0;
  noStroke();
  for (int i=0; i<arr.length; i++) {
    y = height - arr[i];
    if (i == p ) {
      fill(230, 0, 230);
    }
    else if (i == tp) {
      fill(0, 230, 230);
    }
    else if (i == sp) {
      fill(230, 230, 0);
    }
    else {
      fill(255);
    }
    rect(x, y, barWidth, arr[i]);
    x+= barWidth;
  }
}//displayArray
