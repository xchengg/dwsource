int arr[];
int ARRSIZE = 50;

void setup() {
  size(400, 400);
  background(0);
  arr = randomArray(ARRSIZE);
}//setup

void draw() {
  background(0);
  displayArray(arr);
}

void bubleSort(int[] ray) {

}//bubleSort

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

void displayArray(int[] arr) {
  int barWidth = width / arr.length;
  int x = 0;
  int y = 0;
  fill(255);
  noStroke();
  for (int i=0; i<arr.length; i++) {
    y = height - arr[i];
    rect(x, y, barWidth, arr[i]);
    x+= barWidth;
  }
}//displayArray

void keyPressed() {
  if (key == 's') {
    arr = randomArray(ARRSIZE);
  }
  else if (key == 'b') {
    bubleSort(arr);
  }
}
