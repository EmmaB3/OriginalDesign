int x = 10; int y = 10;int counter = 0;
float[] colors = new float[225];float[] heights = new float[75];

void setup(){
  size(500,500);
  frameRate(30);
}
void draw(){
  backdrop();
  student();
  z();
  counter ++;
}

void backdrop(){
  background(214,208,155);
  fill(229,224,174);
  rect(100,-1,400,301);
  fill(201,193,134);
  quad(-1,445,100,300,100,-1,-1,-1);
  bookshelf();
}

void bookshelf(){
  fill(144,121,77);
  rect(120,150,270,170);
  quad(120,150,120+270,150,120+270+20,130,120+20,130);
  quad(120+270,150+170,120+270+20,150+170-20,120+270+20,130,120+270,150);
  fill(137,117,80);
  rect(130,160,250,150);
  fill(144,121,77);
  for(int a = 160 + 50; a < 160 + 200; a +=50){
    rect(130, a, 250,10);
    for(int b = 130; b < 130 + 250; b += 10){
      int index = Math.round((((a - 160 - 50)/50) + 1) * (3.0/10.0)*(b - 130));
      if(counter == 0){
        colors[index] = random(225);
        colors[index + 1] = random(225);
        colors[index + 1] = random(225);
        heights[index/3] = random (25,40);
      }
      fill(colors[index],colors[index + 1],colors[index + 2]);
      rect(b, a - heights[index/3], 10, heights[index/3]);
    }
    fill(144,121,77);
  }
}

void student(){
  fill(245,227,195);
  ellipse(180, 420,75,75);
  fill(225,225,225);
  quad(180 + 40,360,180 + 30, 390, 180 + 80, 390, 180 + 90, 360);
  strokeWeight(5);
  line(180 + (75.0/2.0), 420, 400, 420);
  line(180 + 90, 420, 180 + 150 , 440);
  line(180 + 90,420,180 + 50, 380);
  line(400,420, 475, 385);
  line(400,420,475,455);
  strokeWeight(1);
}

void z(){
  fill(229,30,163);
  if(counter % 50 <= 50/3){
    textSize(40);
    text("z", 110, 400);
  }else if (counter % 50 <= 2*(50/3)){
    textSize(30);
    text("z", 100, 380);
  }else{
    textSize(20);
    text("z", 90, 370);
  }
}




