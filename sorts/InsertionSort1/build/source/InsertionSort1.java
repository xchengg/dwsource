import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class InsertionSort1 extends PApplet {

int arr[];
int pos;
int sortEnd;
int insertVal;

boolean stepwise = false;

public void setup() {
  
  background(0);
  arr = randomArray(100);

  //start:
  //consider index 0 sorted
  //index 1 is the value to insert
  //keep track fo value at index 1
  sortEnd = 0;
  pos = sortEnd;
  insertVal = arr[pos+1];

  if (stepwise) {
    noLoop();
  }
}//setup


public void draw() {
  background(0);
  //if we've reached the end, don't continue
  //if (sortEnd == arr.length-1) {
  if (sortEnd == arr.length-1) {
    displayArray(arr, -1, -1, -1);
  }//done sorting
  else {
    displayArray(arr, pos, sortEnd, insertVal);

    if (arr[pos] > insertVal && pos > 0) {
      arr[pos+1] = arr[pos];
      pos--;
    }//shift
    else {
      arr[pos] = insertVal;
      sortEnd++;
      pos = sortEnd;
      insertVal = arr[pos+1];
    }//done shifting, ready to insert

  }//still sorting

}//draw


public void swap(int[] arr, int i0, int i1) {
  int t = arr[i0];
  arr[i0] = arr[i1];
  arr[i1] = t;
}//swap

public int[] randomArray(int num) {
  int[] values = new int[num];

  for (int i=0; i<values.length; i++) {
    values[i] = PApplet.parseInt(random(100, 400));
  }//random value loop
  return values;
}//randomArray

public void displayArray(int[] arr, int p, int se, int iv) {
  int barWidth = width / arr.length;
  int x = 0;
  int y = 0;
  noStroke();
  for (int i=0; i<arr.length; i++) {
    y = height - arr[i];
    if (i == p ) {
      fill(0, 230, 230);
    }
    else if (i == se) {
      fill(230, 0, 230);
    }
    else {
      fill(255);
    }
    rect(x, y, barWidth, arr[i]);
    if (i == p) {
      fill(230, 230, 0);
      rect(x, height-iv, barWidth, iv);
    }
    x+= barWidth;
  }
}//displayArray

public void keyPressed() {
  if (stepwise) {
    redraw();
  }
}
  public void settings() {  size(400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "InsertionSort1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
