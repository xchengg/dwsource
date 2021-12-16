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
  
  displayArray(arr, -1, -1, -1);
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

void displayArray(int[] arr, int p, int testp, int smallp) {
  int barWidth = width / arr.length;
  int x = 0;
  int y = 0;
  noStroke();
  for (int i=0; i<arr.length; i++) {
    y = height - arr[i];
    if (i == p ) {
      fill(#7EBCE6);
    }
    else if (i == testp) {
      fill(#FA824C);
    }
    else if (i == smallp) {
      fill(#8980F5);
    }
    else {
      fill(255);
    }
    rect(x, y, barWidth, arr[i]);
    x+= barWidth;
  }
}//displayArray
