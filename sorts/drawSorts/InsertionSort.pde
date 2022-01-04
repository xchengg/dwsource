int arr[];
int ARRSIZE = 400;

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
  for (int endPos = arr.length-1; endPos >= 0; endPos--) {
    for (int pos=0; pos < endPos; pos++) {
      if (arr[pos] > arr[endPos]) {
        swap(arr, pos, endPos);
      }
    }
  }
}//bubleSort

void selectionSort(int[] ray) {
  for (int smallPos = 0; smallPos < arr.length - 1; smallPos++) {
    for(int pos = smallPos+1; pos < arr.length; pos++) {
      if(arr[pos] < arr[smallPos]) {
        swap(arr, pos, smallPos);
      }
    }
  }
}//selectionSort

void insertionSort(int[] ray) {
  for (int sortEnd = 0; sortEnd < arr.length; sortEnd++) {
    for (int pos=sortEnd+1; insertVal<arr.length;insertVal++) {
      for (pos = sortEnd - 1
}//insertionSort


void swap(int[] arr, int i0, int i1) {b
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
  if (key == 'n') {
    arr = randomArray(ARRSIZE);
  }
  else if (key == 'b') {
    bubleSort(arr);
  }
  else if (key == 's') {
    selectionSort(arr);
  }
  else if (key == 'i') {
    insertionSort(arr);
  }
}
