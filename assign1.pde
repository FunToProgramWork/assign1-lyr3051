PImage imgBg, imgBg2, actorGH, actorSoldier, lifeHT, actorRobot;
int lifeHx=0;//the times which you can play of the image location 
int width=640;
int height=480;
int[] soldierRX= {80, 160, 240, 320, 400, 480, 560};
int[] soldierRY= {160, 240, 320, 400};
int[] robotRX= {160, 240, 320, 400, 480, 560};
int[] robotRY= {160, 240, 320, 400};

int soldierX=int(random(soldierRX.length));//the location of the soldier is random but have to located on the line
int soldierY=int(random(soldierRY.length));
int robotX=int(random(robotRX.length));//the location of the soldier is random but have to located on the line
int robotY=int(random(robotRY.length));


int i=0;
int j=0;

int lens=20;
String pathData="img/";



void setup() {
  size(640, 480, P2D);
  imgBg=loadImage(pathData+"bg.jpg");
  imgBg2=loadImage(pathData+"soil.png");
  actorGH=loadImage(pathData+"groundhog.png");
  actorSoldier=loadImage(pathData+"soldier.png");
  lifeHT=loadImage(pathData+"life.png");
  actorRobot=loadImage(pathData+"robot.png");
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



void move() {

  soldierRX[soldierX]+=5;//the location (x-axis) of the soldier moving to the right 5 pixel each time 

  if (soldierRX[soldierX]>640) {
    soldierRX[soldierX]=0;//if the x-axis is over 640, x-axis will reset to 0
  }
}


void razerMove() {
  fill(255,0,0);
  i+=2;  
  strokeWeight(10);  
  stroke(255,0,0);
  line(robotRX[robotX]+25-j, robotRY[robotY]+37, robotRX[robotX]+25-i, robotRY[robotY]+37);

  if (i>20) {
    j+=2;
  }
  
  if(i==180){
    i=0;
    j=0;
  }
}




void draw() {

  // Enter Your Code Here
  image(imgBg, 0, 0);
  image(lifeHT, 10, 10);
  image(lifeHT, 80, 10);
  image(lifeHT, 150, 10);
  image(imgBg2, 0, 160);
  drawGrass();
  drawCircle();
  image(actorGH, 280, 80);
  image(actorSoldier, soldierRX[soldierX], soldierRY[soldierY]);
  image(actorRobot, robotRX[robotX], robotRY[robotY]);
  move();
  razerMove();
}
