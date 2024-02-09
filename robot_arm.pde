void setup(){
size(640,600,P3D);
lights();
}

float angle1 =0;
float angle2 =0;
float angle3 =0;
float angle4 = 0;
float angle5 = 0;

void draw(){
  background(255);
  fill(0,0,255);
  translate(width/2,height-100,0);
  rotateY(angle2);
  box(20,100,20);
  translate(0,-50,0);
  arm(30,100,0,0,1,255,0,0);
  arm(20,50,0,0,2,0,255,0);
  arm(10,20,1,0,0,255,255,0);
  translate(0,-5,0);
  rotateY(angle5);
  box(20,10,20);
  translate(0,-12.5,8.5);
  box(10,15,3);
  translate(0,0,-16);
  box(10,15,3);
  if (keyPressed){
    if(key == 's'){
       if(angle1 > -PI/4){
       angle1 -= PI/100;}
       else{ angle1 += 0;}
     }
     else if(key == 'w'){
        if(angle1 < PI/4){
       angle1 += PI/100;}
       else{ angle1 += 0;}
     }
     else if(keyCode == UP){
       if(angle3 > -PI/2){
       angle3 -= PI/100;}
       else{ angle3 += 0;}
     }
      else if(keyCode == DOWN){
        if(angle3 < PI/2){
       angle3 += PI/100;}
       else{ angle3 += 0;}
     }
 if(key == 'a'){
       if(angle4 > -PI/2){
       angle4 -= PI/100;}
       else{ angle4 += 0;}
     }
      else if(key == 'd'){
        if(angle4 < PI/2){
       angle4 += PI/100;}
       else{ angle4 += 0;}
}
if(keyCode == RIGHT){
  if(angle2 > -PI/2){
       angle2 -= PI/50;}
       else{ angle2 += 0;}
     }
      else if(keyCode == LEFT){
        if(angle2 < PI/2){
       angle2 += PI/50;}
       else{ angle2 += 0;}
     }
     if(key == ENTER){
     angle5 += PI/3;}
}
}

void arm(int x,int y,int i, int j,int k,int a,int b,int c){
  fill (a,b,c);
  translate(0,-x/2,0);
  if (i >= 1){
    rotateX(angle1);
   }
    else if  ( j >= 1){
      rotateY(angle2);
   }
    else if ( (k >= 1) && (k-1<1)){
      rotateZ(angle3);
   }
      else if ( (k >= 1) && (k-1>=1)){
      rotateZ(angle4);
   }
   box(x);
   translate(0,-x/2 - y/2,0);
   box(x,y,x);
   translate(0,- y/2,0);
}
