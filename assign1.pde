PImage imgBg, imgBg2, actorGH, actorSoldier, lifeHT, actorRobot;
int lifeHx=0;//the times which you can play of the image location 
int width=640;
int height=480;
float[] razerX= new float[160];
float soldierY=1;//the x-axis and y-axis of robot and soldier default to 1
float robotY=1;
float soldierX=1;
float robotX=1;

int i=0;
int timer=0;
int lens=20;
String pathData="D:Git/assign1-lyr3051/img/";


void setup() {
  size(640, 480, P2D);
  imgBg=loadImage(pathData+"bg.jpg");
  imgBg2=loadImage(pathData+"soil.png");
  actorGH=loadImage(pathData+"groundhog.png");
  actorSoldier=loadImage(pathData+"soldier.png");
  lifeHT=loadImage(pathData+"life.png");
  actorRobot=loadImage(pathData+"robot.png");
  razerX[0]=1;
}

void drawline() {
  int verticallineX=0;//the vertical line was draw from x=0 
  int horizontallineY=160;//the horizontal line was draw from y=160
  stroke(255, 0, 0);
  strokeWeight(1);
  while (verticallineX<width) {
    line(verticallineX, 160, verticallineX, height);
    verticallineX+=80;
  }


  while (horizontallineY<height) {
    line(0, horizontallineY, width, horizontallineY);
    horizontallineY+=80;
  }
}

void drawCircle() {//sun

  stroke(255, 255, 0);
  fill(253, 184, 19);
  strokeWeight(5);
  ellipse(590, 50, 120, 120);
}

void drawGrass() {
  fill(124, 204, 25);
  drawline();
  stroke(124, 204, 25);
  rect(0, 145, width, 15);
}



void drawSoldier() {
  while (soldierY%80!=0) {

    while (soldierX%80!=0) {
      soldierX=random(0, 640);//the location of the soldier is random but have to located on the line
    }
    soldierY=random(160, 480);
  }

  image(actorSoldier, soldierX, soldierY);
}

void move() {

  soldierX+=10;//the location (x-axis) of the soldier moving to the right 5 pixel each time 

  if (soldierX>640) {
    soldierX=0;//if the x-axis is over 640, x-axis will reset to 0
  }
}

void drawRobot() {
  while (robotY%80!=0 ) {//the location of the soldier is random but have to located on the line


    while (robotX%80!=0) {
      robotX=random(160, 640);
    }
      robotY=random(160, 480);
  }

  image(actorRobot, robotX, robotY);
  //razerMove(robotX); //draw the razer of the robot
}



void razerMove(float robotXX) {
int num=0;
  razerX[num]=robotXX+25;// the array of razerX is store the location of the razer
  while (i<lens) {//this while decide the length of the razer
    //delay(1000);
    razerX[num]-=1;
    //for(int j=20;i>0;i--){
      //razerX[j]=razerX[j-1];
    fill(255, 0, 0);
    stroke(255, 0, 0);
    
    ellipse(razerX[num], robotY+37, 5, 5);
    razerX[num+1]=razerX[num];
    print(razerX[num]);
    //}
    i++;
  }
  
  //if (timer>10) {
    i=0;
  //}

  //timer++;
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
  razerMove(robotX);
  
}
