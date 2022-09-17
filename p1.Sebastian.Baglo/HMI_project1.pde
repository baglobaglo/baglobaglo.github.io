  /* @pjs preload="/p1.Sebastian.Baglo/exit_stairs.png,/p1.Sebastian.Baglo/elevator_hotel.png,/p1.Sebastian.Baglo/entrance_x.png,/p1.Sebastian.Baglo/fitness_room.png,/p1.Sebastian.Baglo/reception_icon.png,/p1.Sebastian.Baglo/red_carpet.png,/p1.Sebastian.Baglo/spa_icon.png,/p1.Sebastian.Baglo/bed_room_x.png"; */

String[] floors = {"R", "2", "3", "4", "5"};
int[] pos_y_floor_text = {508, 428, 348, 268, 188};
float circle_x_pos_left = 120;
float circle_x_button_left = 90;
float circle_x_pos_right = 150;
int floor_text_x_pos = 111; 
int outer_circle_color = color(0, 0, 0);
int inner_circle_color = color(255, 255, 255);


//Reseption
float R_y_high_top = 470;
float R_y_low_bottom = 535;
//Second floor
float Second_y_high_top = 390;
float Second_y_low_bottom = 455;
// Third floor
float Third_y_high_top = 310;
float Third_y_low_bottom = 375;
//Fourth floor
float Fourth_y_high_top = 230;
float Fourth_y_low_bottom = 295;
//Fifth floor
float Fifth_y_high_top = 150;
float Fifth_y_low_bottom = 215;

//470
int yElevator = 470;

boolean pressed_R = false;
boolean pressed_2 = false;
boolean pressed_3 = false;
boolean pressed_4 = false;
boolean pressed_5 = false;




void setup() {
  size(700, 700);  
}

void draw() {

  background(163, 154, 116);
  
  for (int i = 420; i > 100; i = i-80) {
    fill(outer_circle_color);
    circle(circle_x_pos_left, i, 62);
  }
  
  fill(0, 255, 0);
  circle(circle_x_pos_left, 500, 63);
  
  for (int i = 500; i > 100; i = i-80) {
    fill(inner_circle_color);
    circle(circle_x_pos_left, i , 55);
  }
  
  
  for (int i = 0, j = 0; i < 5 && j < 5; i = i+1, j = j+1) {
    textSize(30);
    fill(0);
    text(floors[i], floor_text_x_pos, pos_y_floor_text[j]);
    
  }
  
  //  General -------------------------------//
  
  PImage img_bed_room;
      img_bed_room = loadImage("bed_room_x.png");
      tint(163, 154, 116, 255);
      image(img_bed_room, 310, 408, 60, 48);
      image(img_bed_room, 310, 328, 60, 48);
      image(img_bed_room, 310, 248, 60, 48);
      image(img_bed_room, 310, 168, 60, 48);
   //405
   pushStyle();
   textSize(20);
   text("Rooms", 393, 428);
   text("200 - 209", 385, 445);
   text("Rooms", 393, 348);
   text("300 - 309", 385, 365);
   text("Rooms", 393, 268);
   text("400 - 409", 385, 285);
   text("Rooms", 393, 188);
   text("500 - 509", 385, 205);
   
   text("Fitness", 565, 348);
   text("center", 568, 365);
   
   text("Spa", 577, 268);
   text("room", 572, 285);
   
   text("Entrance", 562, 505);
   popStyle();
   
   
   
   
      
  
  // RESEPTION ----------------------------- //
    
    PImage img_R;
    img_R = loadImage("reception_icon.png");
    tint(163, 154, 116, 255);
    image(img_R, 296, 457, 83, 88);
    
    PImage img_entrance;
    img_entrance = loadImage("entrance_x.png");
    tint(163, 154, 116, 255);
    image(img_entrance, 480, 455, 100, 100);
    
    
    
    pushStyle();
    textSize(20);
    text("Reception", 382, 508);
    popStyle();
    
    if (pressed_R) {
      if( yElevator > 470) {
        fill(255, 255, 0);
        circle(circle_x_pos_left, 500, 63);
        fill(inner_circle_color);
        circle(circle_x_pos_left, 500 , 55);
        textSize(30);
        fill(0);
        text("R", floor_text_x_pos, 508);
        
        yElevator --;
        delay(5);
        if ( yElevator == 470) {
          pressed_R = !pressed_R;
          
        } 
      } else {
        fill(255, 255, 0);
        circle(circle_x_pos_left, 500, 63);
        fill(inner_circle_color);
        circle(circle_x_pos_left, 500 , 55);
        textSize(30);
        fill(0);
        text("R", floor_text_x_pos, 508);
        
        yElevator ++;
        delay(5);
        if ( yElevator == 470) {
          pressed_R = !pressed_R;
          
        }
      }
    }
    
    //SECOND FLOOR ----------------------------- //
      
     PImage img_spa;
    img_spa = loadImage("spa_icon.png");
    tint(163, 154, 116, 255);
    image(img_spa, 500, 248, 60, 48);
      
      if (pressed_2) {
        if ( yElevator > 390) {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 420, 63);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 420 , 55);
          textSize(30);
          fill(0);
          text("2", floor_text_x_pos, 428);
          
          yElevator --;
          delay(10);
          if ( yElevator == 390) {
            pressed_2 = !pressed_2;
          }
        } else {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 420, 63);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 420 , 55);
          textSize(30);
          fill(5);
          text("2", floor_text_x_pos, 428);
          
          yElevator ++;
          delay(10);
          if ( yElevator == 390) {
            pressed_2 = !pressed_2;           
          }
        }
      }
      // THIRD FLOOR ----------------------------- //
      
    PImage img_3;
    img_3 = loadImage("fitness_room.png");
    tint(163, 154, 116, 255);
    image(img_3, 487, 323, 88, 58);
    
    
      
      if (pressed_3) {        
        if ( yElevator > 310) {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 340, 65);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 340 , 55);
          textSize(30);
          fill(0);
          text("3", floor_text_x_pos, 348);
          
          yElevator --;
          delay(5);
          if ( yElevator == 310) {
            pressed_3 = !pressed_3;
            
          }
          
        } else {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 340, 63);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 340 , 55);
          textSize(30);
          fill(0);
          text("3", floor_text_x_pos, 348);
          
          yElevator ++;
          delay(5);
          if ( yElevator == 310) {
            pressed_3 = !pressed_3;
            
          }
        }
      }
      
      //FOURTH FLOOR ----------------------------- //
      if (pressed_4) {
        if ( yElevator > 230) {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 260, 63);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 260 , 55);
          textSize(30);
          fill(0);
          text("4", floor_text_x_pos, 268);
          
          yElevator --;
          delay(5);
          if ( yElevator == 230) {
            pressed_4 = !pressed_4;
            
          }
          
        } else {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 260, 63);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 260 , 55);
          textSize(30);
          fill(0);
          text("4", floor_text_x_pos, 268);
          
          yElevator ++;
          delay(5);
          if ( yElevator == 230) {
            pressed_4 = !pressed_4;
            
          }
        }
      }
      
      //FIFTH FLOOR ----------------------------- //
      if (pressed_5) {
        if ( yElevator > 150) {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 180, 63);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 180 , 55);
          textSize(30);
          fill(0);
          text("5", floor_text_x_pos, 188);
          
          yElevator --;
          delay(5);
          if ( yElevator == 150) {
            pressed_5 = false;
            
          }
          
        } else {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 180, 63);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 180 , 55);
          textSize(30);
          fill(0);
          text("5", floor_text_x_pos, 188);
          
          yElevator ++;
          delay(5);
          if ( yElevator == 150) {
            pressed_5 = false;
            
          }
        }
      }
  
 
    //floor lines
 
 line(185, 215, 640, 215);
 line(185, 295, 640, 295);
 line(185, 375, 640, 375);
 line(185, 455, 640, 455);
 pushStyle();
 strokeWeight(2);
 line(280, 215, 640, 215);
 line(280, 295, 640, 295);
 line(280, 375, 640, 375);
 line(280, 455, 640, 455);
 popStyle();
 
 
 //walls and groundfloor/roof
 pushStyle();
 strokeWeight(5);
 line(185, 135, 185, 535);
 line(185, 535, 640, 535);
 line(640, 135, 640, 535);
 line(185, 135, 640, 135);
 line(280, 135, 280, 535);
 popStyle();
 
 //elevator
 //move elevator faster, spa up a floor, sound? exit? done.
 pushStyle();
 strokeWeight(2);
 line(235, 135, 235, yElevator);
 popStyle();
 PImage img_elevator;
    img_elevator = loadImage("elevator_hotel.png");
    tint(163, 154, 116, 255);
    image(img_elevator, 194, yElevator-18, 83, 88);
 
 pushStyle();
  stroke(163, 154, 116);
  strokeWeight(5);
  line(498, 535, 562, 535);
  popStyle();
  
  
  PImage img_red_carped;
    img_red_carped = loadImage("red_carpet.png");
    tint(163, 154, 116, 255);
    image(img_red_carped, 455, 505, 150, 100);
  
  //blind people numbers
    pushStyle();
    stroke(125);
    
    circle(133, 491, 5);
    circle(133, 498, 5);
    circle(133, 505, 5);
    circle(140, 498, 5);
    
    circle(133, 411, 5);
    circle(133, 417, 5);
    
    circle(137, 331, 5);
    circle(130, 331, 5);
    
    circle(130, 251, 5);
    circle(137, 251, 5);
    circle(137, 258, 5);
    
    circle(130, 171, 5);
    circle(137, 178, 5);
    popStyle();
}
  





void mouseClicked() {
 
    // Reseption floor button
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right 
    && mouseY>R_y_high_top && mouseY<R_y_low_bottom) {
        pressed_R = !pressed_R;
        
             
  }
    // Second floor button
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Second_y_high_top && mouseY<Second_y_low_bottom) {
        pressed_2 = !pressed_2;
        
  }
     
    // Third floor
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Third_y_high_top && mouseY<Third_y_low_bottom) {
        pressed_3 = !pressed_3;
  } 
  // Fourth floor
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Fourth_y_high_top && mouseY<Fourth_y_low_bottom) {
        pressed_4 = !pressed_4;
        
  } 
  // Fifth floor
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Fifth_y_high_top && mouseY<Fifth_y_low_bottom) {
        pressed_5 = !pressed_5;
        
        
  }
}



   
