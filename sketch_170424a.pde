PFont font;
int y = 0;
color d,i,o,r;

void setup(){
  size(600, 600);
  font = loadFont("BMJUAOTF-200.vlw");
}

void draw(){
  textFont(font);
  setGradient(0, 0, 600, 600, color(228, 59, 104), color(192, 109, 153), 2);
  fontGen(110,-5,55,"D");
  fontGen(260,0,80,"r");
  fontGen(330,40,80,"o");
  fontGen(440,10,100,"p");
  
  fontGen(0,200,300,"H");
  fontGen(160,145,200,"a");
  fontGen(280,185,240,"p");
  fontGen(380,205,260,"p");
  fontGen(510,205,260,"Y");
  
  fontGen(-30,500,655,"It's");
  fontGen(160,330,410,"working");
  
}

void fontGen(int x, int y, int upto, String txt){
  for(int i = y; i < upto; i++){
    fill(255,255,255, map(i, y, upto-1, 0, 15));
    text(txt, x, i);
  }
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
  noFill();
  if (axis == 2) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}