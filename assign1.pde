PImage imgBg, imgBg2, actorGH, actorSoldier, lifeHT, actorRobot;
int n=6;
int m=8;
int lifeHx=0;
int width=640;
int height=480;
//float soldierY=random(160, 480);
//float robotY=random(160, 480);
//float soldierX=random(0, 640);
//float robotX=random(0, 640);

float soldierY=1;
float robotY=1;
float soldierX=1;
float robotX=1;
float razerX;
int i=0;
int timer=0;
String pathData="D:Git/assign1-lyr3051/img/";
void setup() {
  size(640,480, P2D);
  imgBg=loadImage(pathData+"bg.jpg");
  imgBg2=loadImage(pathData+"soil.png");
  actorGH=loadImage(pathData+"groundhog.png");
  actorSoldier=loadImage(pathData+"soldier.png");
  lifeHT=loadImage(pathData+"life.png");
  actorRobot=loadImage(pathData+"robot.png");
  // Enter Your Setup Code Here
}

void drawline() {
  int cw=0;
  int ch=160;
  stroke(255, 0, 0);
  strokeWeight(1);
  while (cw<width) {
    line(cw, 160, cw,height);
    cw+=80;
  }

  while (ch<height) {
    line(0, ch, width, ch);
    ch+=80;
  }
}

void drawCircle() {

  stroke(255, 255, 0);
  fill(253, 184, 19);
  strokeWeight(5);
  ellipse(590, 50, 120, 120);
}

void drawGrass(){
  fill(124, 204, 25);
  drawline();
  stroke(124, 204, 25);
  rect(0, 145, width, 15);
  
}



void drawSoldier() {
  while (soldierY%80!=0) {

    while (soldierX%80!=0) {
      soldierX=random(0, 640);
    }
    soldierY=random(160, 480);
  }

  image(actorSoldier, soldierX, soldierY);
}

void move() {

  soldierX+=5;

  if (soldierX>640) {
    soldierX=0;
  }
}

void drawRobot() {
  while (robotY%80!=0 ) {


    while (robotX%80!=0) {
      robotX=random(160, 640);
    }
    robotY=random(160, 480);
  }

  image(actorRobot, robotX, robotY);
  //ellipse(robotX+25,robotY+37,5,5);
  razerMove(robotX); 
    
 
}



void razerMove(float robotXX){
  
  razerX=robotXX+25;
  while(i<20){
    
  razerX-=1;
  fill(255,0,0);
  stroke(255,0,0);
  ellipse(razerX,robotY+37,5,5);
  i++;
 
  
}

if(timer>10){
  i=0;
}

timer++;
}
void draw() {

  // Enter Your Code Here
  image(imgBg, 0, 0);
  image(lifeHT, 10, 10);
  image(lifeHT, 80, 10);
  image(lifeHT, 150, 10);
  image(imgBg2, 0, 160);
  drawGrass();
  image(actorGH, 280, 80);
  drawCircle();
  drawSoldier();
  move();
  drawRobot();
  

}
