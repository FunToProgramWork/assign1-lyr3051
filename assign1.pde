PImage imgBg, imgBg2, actorGH, actorSoldier, lifeHT;
int n=6;
int m=8;
int lifeHx=0;

String pathData="D:/assign1-lyr3051/img/";
void setup() {
  size(640, 480, P2D);
  imgBg=loadImage(pathData+"bg.jpg");
  imgBg2=loadImage(pathData+"soil.png");
  actorGH=loadImage(pathData+"groundhog.png");
  actorSoldier=loadImage(pathData+"soldier.png");
  lifeHT=loadImage(pathData+"life.png");
  
	// Enter Your Setup Code Here
}

void drawline(){
  int cw=0;
  int ch=160;
stroke(255,0,0);
strokeWeight(1);
while(cw<width){
  line(cw,160,cw,480);
  cw+=80;
}

while(ch<height){
  line(0,ch,width,ch);
  ch+=80;  
}
}

void drawcircle(){

  stroke(255,255,0);

fill(253,184,19);
strokeWeight(5);
circle(590, 50, 120);

}

void draw() {
  
	// Enter Your Code Here
image(imgBg,0,0);

image(lifeHT,10,10);
image(lifeHT,80,10);
image(lifeHT,150,10);
image(imgBg2,0,160);
fill(124,204,25);
drawline();
stroke(124,204,25);
rect(0,145,width,15);

image(actorGH,280,80);

drawcircle();
image(actorSoldier,0,400);



}
