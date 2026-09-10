void setup() {
  size(210, 200);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}

void draw() {
  //60 wide, 65 tall
  boolean shift = true;
  for(int y = 200;y >= -50;y-=30){
    for(int x = 0; x <= 235; x+=70){
      if(shift == true)
        scale(x+35,y);
      else
        scale(x,y);
    }
    if(shift==true)
      shift = false;
    else
      shift = true;
  }
}

void scale(int x, int y) {
  stroke(255,255,255);
  fill(255, 157, 205);
  beginShape();
  curveVertex(x+25,y);
  curveVertex(x+25,y);
  curveVertex(x+35,y+25);
  curveVertex(x+25,y+50);
  curveVertex(x+10,y+60);
  curveVertex(x,y+65);
  curveVertex(x-10,y+60);
  curveVertex(x-25,y+50);
  curveVertex(x-35,y+25);
  curveVertex(x-25,y);
  curveVertex(x-25,y);
  endShape();
  //smaller scale
  stroke(235, 61, 162);
  fill(235, 61, 162);
  //fill(224, 27, 142);
  bezier(x-15,y,x-35,y+35,x,y+35,x,y+45);
  bezier(x+15,y,x+35,y+35,x,y+35,x,y+45);
  triangle(x+15,y,x,y+45,x-15,y);
}

  /*
  stroke(255,255,255);
  fill(255, 157, 205);
  beginShape();
  curveVertex(125,75);
  curveVertex(125,75);
  curveVertex(135,100);
  curveVertex(125,125);
  curveVertex(110,135);
  curveVertex(100,140);
  curveVertex(90,135);
  curveVertex(75,125);
  curveVertex(65,100);
  curveVertex(75,75);
  curveVertex(75,75);
  endShape();
  //smaller scale
  stroke(235, 61, 162);
  fill(235, 61, 162);
  //fill(224, 27, 142);
  bezier(85,75,65,110,100,110,100,120);
  bezier(115,75,135,110,100,110,100,120);
  triangle(115,75,100,120,85,75); */
