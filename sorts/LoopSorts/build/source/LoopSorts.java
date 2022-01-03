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

public class LoopSorts extends PApplet {

int arr[];

public void setup() {
  
  background(0);
  arr = randomArray(50);
}//setup

public void draw() {
  background(0);
  displayArray(arr);
}


public void bubleSort(int[] ray) {
  for (int endPos=arr.length-1; endPos>=0; endPos--) {
    for (int pos = 0; pos < endPos; pos++) {
      if (ray[pos] > ray[pos+1]) {
        swap(ray, pos, pos+1);
      }
    }//innner loop
  }//outer loop
}//bubleSort

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

public void displayArray(int[] arr) {
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

public void keyPressed() {
  bubleSort(arr);
}
  public void settings() {  size(400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "LoopSorts" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
