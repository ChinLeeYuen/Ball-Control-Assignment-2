import controlP5.*;
ControlP5 cp5;

int background;
int shirtSlider;
int eyeSlider;
int y=300;
boolean spec = false;

void setup(){
  size(300,400);
  strokeWeight(10);
  cp5 = new ControlP5(this);
  cp5.addSlider("background").setPosition(10,370).setSize(170,15).setRange(40,210);
  cp5.addSlider("shirtSlider").setPosition(10,220).setSize(15,100).setRange(0,187);
  cp5.addSlider("eyeSlider").setPosition(10,90).setSize(15,100).setRange(0,10);
  cp5.addToggle("spec").setPosition(240,370).setSize(50,15).setMode(Toggle.SWITCH);
  
  cp5.getTab("default").setLabel("play").setId(1);
  cp5.getTab("extra").setLabel("show").setId(2);
  cp5.getController("spec").moveTo("global");
}

void draw(){
background(126,175,background);
if(mouseX<150){
  rect(0,0,150,400);
}else{
  rect(150,0,150,400);
}
//smallbox
if(mouseButton==LEFT){
  fill(0);
}else if (mouseButton==RIGHT){
  fill(154,111,183);
}else{
  fill(255);
}   
rect(100,y,100,50);

if(keyPressed==true){
  line(100,300,200,350);
  line(200,300,100,350);
}

//leg
fill(213,231,242);
rect(105,230,35,20);
rect(160,230,35,20);
fill(240,126,shirtSlider);
ellipse(118,250,45,20);
ellipse(183,250,45,20);

//body
fill(255,220,167);
ellipse(122,172,15,30);
ellipse(179,172,15,30);
fill(155,shirtSlider,255);
quad(125,155,175,155,200,230,100,230);//T
fill(245,174,116,191);
rect(130,155,40,20);

smooth();
fill(255,220,167);
ellipse(80,100,20,20);//Left ear
ellipse(220,100,20,20);//right ear
stroke(0);
line(150,40,150,20);
line(140,40,135,22);
line(160,40,165,22);
ellipse(150,100,135,125);//head

if(spec){
fill(126,240,233);
ellipse(125,80,45,45);//left.O
ellipse(175,80,45,45);//right.O
}
fill(245,174,116);
noStroke();
triangle(150,90,155,110,145,110);//nose
stroke(0);

if(spec){
strokeWeight(3);
ellipse(125,80,35,35);//left.I
ellipse(175,80,35,35);//right.I
}
strokeWeight(1);

if(mousePressed==true){
line(120-eyeSlider,80,135-eyeSlider,80);
line(165+eyeSlider,80,180+eyeSlider,80);
}else{
fill(0);
ellipse(130-eyeSlider,80,10,10);//left.E
ellipse(170+eyeSlider,80,10,10);//right.E
}

fill(255,99,59);
ellipse(150,135,17,23); //mouth

if(mousePressed==true){
ellipse(mouseX,mouseY,10,10);//cursor
}else{
  cursor(CROSS);
}
}


