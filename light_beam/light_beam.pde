
int lightX = 300;
int lightY = 600;
int lightColor = #58dda4;
int lightLength = 300;
int lightWidth = 4;
int lightSpeed = 3;
//Neon Colors
int[] colors = {#4deeea,#74ee15,#ffe700,#f000ff,#001eff};
//Initial X position
int intialPos = 300;
//Lines array to hold beams
int[] lines = new int [60];

//Setup runs once
void setup(){
 //Size of window
 size(600,600);
 //Initialize beams in array 
 for(int i =0; i<60;i++){
   lines[i] = lightY-(int)random(lightLength);
 }
}
//Runs every loop to draw beams
void draw(){
  //Black background
  background(0);
  strokeWeight(lightWidth);
  //index of colors array
  int index = (int)random(4);
  stroke(colors[index]);
  //Keep beams from leaving screen
  if(lightY<0){
    lightY = 600;
  }else{
   lightY = lightY - lightSpeed;
  }
  //line(300,lightY,300,lightY-lightLength);
  //Draw all beams
  for(int i = 0;i<600;i=i+10)
  {
    line(i,lightY,i,lines[i%60]);
  }
  //line(lightX,lightY,lightX+lightLength,lightY);
}
