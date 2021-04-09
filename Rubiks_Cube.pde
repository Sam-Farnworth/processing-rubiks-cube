String [][] front = new String [3][3];
String [][] top = new String [3][3];
String [][] bottom = new String [3][3];
String [][] left = new String [3][3];
String [][] right = new String [3][3];
String [][] back = new String [3][3];

String [][] reserve = new String [3][3];

boolean updated = false;
String currentCol;
boolean extraGuides = true;

void setup()
{
  background(150);
  line(400,0,400,400);
  line (0, 400, 620, 400);
  reset();
  
  buttons();
  extraButtons();
}

void settings()
{
  size(620,600);
}

void draw()
{
  if (!updated)
  {
    //
    //buttons();
    //extraButtons();
    //
    for (int i = 0 ; i < 3 ; i++)
    {
      for (int j = 0 ; j < 3 ; j++)
      {
        //Front
        currentCol = front[i][j];
        currentColour();
        rect(100 + (23*i), 100 + (23*j), 23,23);
        
        //Top
        currentCol = top[i][j];
        currentColour();
        rect(100 + (23*i), 25 + (23*j), 23,23);
        
        //Bottom
        currentCol = bottom[i][j];
        currentColour();
        rect(100 + (23*i), 175 + (23*j), 23,23);
        
        //Left
        currentCol = left[i][j];
        currentColour();
        rect(25 + (23*i), 100 + (23*j), 23,23);
        
        //Right
        currentCol = right[i][j];
        currentColour();
        rect(175 + (23*i), 100 + (23*j), 23,23);
        
        //Back
        currentCol = back[i][j];
        currentColour();
        rect(250 + (23*i), 100 + (23*j), 23,23);
      }
    }
    
    //Extra Guides
    if (extraGuides == true)
    {
    for (int i = 0 ; i < 3 ; i++)
    {
      for (int j = 0 ; j < 3 ; j++)
      {
        //Top
          //Left join
        currentCol = top[0][j];
        currentColour();
        rect(25 + (23*j), 96, 23, 3);
          //Right join
        currentCol = top[2][j];
        currentColour();
        rect(175 + (23*(2-j)), 96, 23, 3);
          //Back join
        currentCol = top[i][0];
        currentColour();
        rect(250 + (23*(2-i)), 96, 23, 3);
        
        //Bottom
          //Left join
        currentCol = bottom[0][j];
        currentColour();
        rect(25 + (23*(2-j)), 170, 23, 3);
          //Right join
        currentCol = bottom[2][j];
        currentColour();
        rect(175 + (23*j), 170, 23, 3);
          //Back join
        currentCol = bottom[i][2];
        currentColour();
        rect(250 + (23*(2-i)), 170, 23, 3);
        
        //Left
          //Top join
        currentCol = left[i][0];
        currentColour();
        rect(96, 25+(23*i), 3, 23);
          //Bottom join
        currentCol = left[i][2];
        currentColour();
        rect(96, 175+(23*(2-i)), 3, 23);
          //Back join
        currentCol = left[0][j];
        currentColour();
        rect(320,100 + (23*j),3,23);
        
        //Right
          //Top join
        currentCol = right[i][0];
        currentColour();
        rect(170, 25+(23*(2-i)), 3, 23);
          //Bottom join
        currentCol = right[i][2];
        currentColour();
        rect(170, 175+(23*i), 3, 23);
        
        //Back
          //Top join
        currentCol = back[i][0];
        currentColour();
        rect(100+(23*(2-i)), 22, 23, 3);
          //Bottom join
        currentCol = back[i][2];
        currentColour();
        rect(100+(23*(2-i)), 243, 23, 3);  
          //Left join
        currentCol = back[2][j];
        currentColour();
        rect(21, 100 + (23*j),3,23);
      }
    }
    }
    
    //
    
    //
    updated = true;
    //
  }
}

void currentColour()
{
  switch(currentCol)
  {
    case "white":
      fill(255);
      break;
    case "yellow":
      fill(255,255,0);
      break;
    case "blue":
      fill(20,50,255);
      break;
    case "green":
      fill(20,250,10);
      break;
    case "orange":
      fill(255,150,0);
      break;
    case "red":
      fill(255,0,0);
      break;
    default:
      fill(0);
      break;
  }
}

//Buttons
void buttons()
{
  //Text
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("Up", 50, 285); 
  text("Left", 110, 285);  
  text("Right", 170, 285);
  text("Front", 230, 285);
  text("Down", 290, 285);
  text("Back", 350, 285);
  text("Scramble", 247, 40);
  
  //Buttons
  //Normal
  fill(200);
  rect(25, 300, 50, 40);
  
  rect(85, 300, 50, 40);
  
  rect(145, 300, 50, 40);
  
  rect(205, 300, 50, 40);
  
  rect(265, 300, 50, 40);
  
  rect(325, 300, 50, 40);
  
  //Primes
  rect(25, 350, 50, 40);
  
  rect(85, 350, 50, 40);
  
  rect(145, 350, 50, 40);
  
  rect(205, 350, 50, 40);
  
  rect(265, 350, 50, 40);
  
  rect(325, 350, 50, 40);
  
  //Scramble Button
  fill(50);
  rect(222, 50, 50, 30);
}

//More Buttons
void extraButtons()
{
  //Text
  fill(0);
  text("Rotations", 510, 260);
  text("X", 450, 285);
  text("Y", 510, 285);
  text("Z", 570, 285);
  
  text("Slices", 510, 60);
  text("M", 450, 85);
  text("E", 510, 85);
  text("S", 570, 85);
  
  text("Algorithms", 310, 430);
  fill(200);
  
  //Slices
  rect(425, 100, 50, 40);
  rect(485, 100, 50, 40);
  rect(545, 100, 50, 40);
  
  rect(425, 150, 50, 40);
  rect(485, 150, 50, 40);
  rect(545, 150, 50, 40);
  
  //Rotations
  fill(200);
  
  rect(425, 300, 50, 40);
  rect(485, 300, 50, 40);
  rect(545, 300, 50, 40);
  
  rect(425, 350, 50, 40);
  rect(485, 350, 50, 40);
  rect(545, 350, 50, 40);
  
  //Algorithms
  fill(0);
  text("J (L)", 65, 455 );
  text("H", 135, 455 );
  text("A(a)", 205, 455 );
  text("-", 275, 455 );
  text("-", 345, 455 );
  text("-", 415, 455 );
  text("-", 485, 455 );
  text("EdgeL", 555, 455 );
  
  text("J (R)", 65, 520 );
  text("X", 135, 520 );
  text("A(b)", 205, 520 );
  text("-", 275, 520 );
  text("-", 345, 520 );
  text("-", 415, 520 );
  text("-", 485, 520 );
  text("EdgeR", 555, 520 );
  
  
  fill(200);
  rect(40, 460, 50, 40);
  rect(110, 460, 50, 40);
  rect(180, 460, 50, 40);
  rect(250, 460, 50, 40);
  rect(320, 460, 50, 40);
  rect(390, 460, 50, 40);
  rect(460, 460, 50, 40);
  rect(530, 460, 50, 40);
  
  rect(40, 525, 50, 40);
  rect(110, 525, 50, 40);
  rect(180, 525, 50, 40);
  rect(250, 525, 50, 40);
  rect(320, 525, 50, 40);
  rect(390, 525, 50, 40);
  rect(460, 525, 50, 40);
  rect(530, 525, 50, 40);
}

//Click
void mouseClicked()
{
  //Algorithms
  if (mouseY>400)
  {
    if (mouseY >= 460 && mouseY <= 500)
    {
      //Left / A Row
      if (mouseX >= 40 && mouseX <= 90)
      {
        JpermL();
      }
      else if (mouseX >= 110 && mouseX <= 160)
      {
        Hperm();
      }
      else if (mouseX >= 180 && mouseX <= 230)
      {
      }
      else if (mouseX >= 250 && mouseX <= 300)
      {
      }
      else if (mouseX >= 320 && mouseX <= 370)
      {
      }
      else if (mouseX >= 390 && mouseX <= 440)
      {
      }
      else if (mouseX >= 460 && mouseX <= 510)
      {
      }
      else if (mouseX >= 530 && mouseX <= 580)
      {
        edgeLeft();
      }
    }
    else if (mouseY >= 525 && mouseY <= 565)
    {
      //Right / B Row
      if (mouseX >= 40 && mouseX <= 90)
      {
        JpermR();
      }
      else if (mouseX >= 110 && mouseX <= 160)
      {
        Xperm();
      }
      else if (mouseX >= 180 && mouseX <= 230)
      {
      }
      else if (mouseX >= 250 && mouseX <= 300)
      {
      }
      else if (mouseX >= 320 && mouseX <= 370)
      {
      }
      else if (mouseX >= 390 && mouseX <= 440)
      {
      }
      else if (mouseX >= 460 && mouseX <= 510)
      {
      }
      else if (mouseX >= 530 && mouseX <= 580)
      {
        edgeRight();
      }
      
    }
  }
  //Rotations and Slices
  else if (mouseX > 400)
  {
    if (mouseY >= 100 && mouseY <= 140)
    {
      //Slices
      if (mouseX >= 425 && mouseX <= 475)
      {
        moveMslice();
      }
      else if (mouseX >= 485 && mouseX <= 535)
      {
        moveEslice();
      }
      else if (mouseX >= 545 && mouseX <= 595)
      {
        moveSslice();
      }
    }
    else if (mouseY >= 150 && mouseY <= 190)
    {
      //Prime slices
      if (mouseX >= 425 && mouseX <= 475)
      {
        moveMsliceP();
      }
      else if (mouseX >= 485 && mouseX <= 535)
      {
        moveEsliceP();
      }
      else if (mouseX >= 545 && mouseX <= 595)
      {
        moveSsliceP();
      }
    }
    else if (mouseY >= 300 && mouseY <= 340)
    {
      //Rotations
      if (mouseX >= 425 && mouseX <= 475)
      {
        rotX();
      }
      else if (mouseX >= 485 && mouseX <= 535)
      {
        rotY();
      }
      else if (mouseX >= 545 && mouseX <= 595)
      {
        rotZ();
      }
    }
    else if (mouseY >= 350 && mouseY <= 390)
    {
      //Prime Rotations
      if (mouseX >= 425 && mouseX <= 475)
      {
        rotXprime();
      }
      else if (mouseX >= 485 && mouseX <= 535)
      {
        rotYprime();
      }
      else if (mouseX >= 545 && mouseX <= 595)
      {
        rotZprime();
      }
    }
    
    
  }
  
  //Normals
  else if (mouseY >= 300 && mouseY <= 340)
  {
    //Up
    if (mouseX >= 25 && mouseX <= 75)
    {
      moveU();
    }
    
    //Left
    else if (mouseX >= 85 && mouseX <= 135)
    {
      moveL();
    }
    
    //Right
    if (mouseX >= 145 && mouseX <= 195)
    {
      moveR();
    }
    
    //Front
    else if (mouseX >= 205 && mouseX <= 255)
    {
      moveF();
    }
    
    //Down
    if (mouseX >= 265 && mouseX <= 315)
    {
      moveD();
    }
    
    //Back
    else if (mouseX >= 325 && mouseX <= 375)
    {
      moveB();
    }
  }
  
  //Primes
  else if (mouseY >=350 && mouseY <= 390)
  {
    //Up
    if (mouseX >= 25 && mouseX <= 75)
    {
      moveUprime();
    }
    
    //Left
    else if (mouseX >= 85 && mouseX <= 135)
    {
      moveLprime();
    }
    
    //Right
    if (mouseX >= 145 && mouseX <= 195)
    {
      moveRprime();
    }
    
    //Front
    else if (mouseX >= 205 && mouseX <= 255)
    {
      moveFprime();
    }
    
    //Down
    if (mouseX >= 265 && mouseX <= 315)
    {
      moveDprime();
    }
    
    //Back
    else if (mouseX >= 325 && mouseX <= 375)
    {
      moveBprime();
    }
  }
  else if (mouseY >=50 && mouseY <= 80)
  {
    if (mouseX >= 222 && mouseX <= 272)
    {
      
      randomise();
      println("Randomised!");
    }
  }
  updated = false;
}

void reset()
{
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      //Left top, down, down, top middle, etc.
     front [i][j] = "blue"; 
     top [i][j] = "yellow"; 
     bottom [i][j] = "white"; 
     left [i][j] = "orange"; 
     right [i][j] = "red"; 
     back [i][j] = "green"; 
    }
  }
}

//Randomise
void randomise()
{
  int randomMove = 0;
  for (int k = 0 ; k < int(random(18,25)) ; k++)
  {
    randomMove = int(random(12));
    
    switch(randomMove)
    {
      case 0:
        moveU();
        break;
      case 1:
        moveL();
        break;
      case 2:
        moveR();
        break;
      case 3:
        moveF();
        break;
      case 4:
        moveD();
        break;
      case 5:
        moveB();
        break;
      case 6:
        moveUprime();
        break;
      case 7:
        moveLprime();
        break;
      case 8:
        moveRprime();
        break;
      case 9:
        moveFprime();
        break;
      case 10:
        moveDprime();
        break;
      case 11:
        moveBprime();
        break;
      default:
    }
    
  }
  updated = false;
}


//Moves
void moveU()
{
  println("Up!");
  
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve [i][0] = front[i][0];
    front [i][0] = right[i][0];
    right [i][0] = back[i][0];
    back [i][0] = left[i][0];
    left [i][0] = reserve[i][0];
  }
  
  rotTopClock();
  
  updated = false;
}

void moveUprime()
{
  println("Up Prime!");
  
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve [i][0] = front[i][0];
    front [i][0] = left[i][0];
    left [i][0] = back[i][0];
    back [i][0] = right[i][0];
    right [i][0] = reserve[i][0];
  }
  
  rotTopAnti();
  
  updated = false;
}


void moveD()
{
  println("Down!");
  
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve [i][2] = front[i][2];
    front [i][2] = left[i][2];
    left [i][2] = back[i][2];
    back [i][2] = right[i][2];
    right [i][2] = reserve[i][2];
  }
  rotBottomClock();
  
  updated = false;
}

void moveDprime()
{
  println("Down Prime!");
  
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve [i][2] = back[i][2];
    back [i][2] = left[i][2];
    left [i][2] = front[i][2];
    front [i][2] = right[i][2];
    right [i][2] = reserve[i][2];
  }
  rotBottomAnti();
  
  updated = false;
}

void moveR()
{
  println("Right!");
  
    for (int j  = 0 ; j < 3 ; j++)
    {
      reserve [2][j] = top[2][j]; 
      top [2][j] = front[2][j];
      front [2][j] = bottom[2][j];
      bottom [2][j] = back[0][2-j];
      back [0][2-j] = reserve [2][j];
    }
  
  rotRightClock();
  updated = false;
}

void moveRprime()
{
  println("Right Prime!");
  
  for (int j  = 0 ; j < 3 ; j++)
    {
      reserve [2][j] = bottom[2][j]; 
      bottom [2][j] = front[2][j];
      front [2][j] = top[2][j];
      top [2][j] = back[0][2-j];
      back [0][2-j] = reserve [2][j];
    }
  
  rotRightAnti();
  updated = false;
}

void moveL()
{
  println("Left");
  
  for (int j  = 0 ; j < 3 ; j++)
  {
    reserve [2][j] = bottom[0][j]; 
    bottom [0][j] = front[0][j];
    front [0][j] = top[0][j];
    top [0][j] = back[2][2-j];
    back [2][2-j] = reserve [2][j];
  }
  
  rotLeftClock();
  updated = false;
}

void moveLprime()
{
  println("Left Prime!");
  for (int j  = 0 ; j < 3 ; j++)
  {
    reserve [2][j] = top[0][j]; 
    top [0][j] = front[0][j];
    front [0][j] = bottom[0][j];
    bottom [0][j] = back[2][2-j];
    back [2][2-j] = reserve [2][j];
  }
  
  rotLeftAnti();
  updated = false;
}

void moveF()
{
  println("Front!");
  
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve[i][2] = top[2-i][2];
    top[2-i][2] = left[2][i];
    left[2][i] = bottom[i][0];
    bottom[i][0] = right[0][2-i];
    right[0][2-i] = reserve[i][2];
  }
  
  rotFrontClock();
  updated = false;
  
}

void moveFprime()
{
  println("Front Prime!");
    
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve[i][2] = top[2-i][2];
    top[2-i][2] = right[0][2-i];
    right[0][2-i] = bottom[i][0];
    bottom[i][0] = left[2][i];
    left[2][i] = reserve[i][2];
  }
  
  rotFrontAnti();
  updated = false;
  
}

void moveB()
{
  println("Back!");
  
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve[i][0] = top[i][0];
    top[i][0] = right[2][i];
    right[2][i] = bottom[2-i][2];
    bottom[2-i][2] = left[0][2-i];
    left[0][2-i] = reserve[i][0];
  }
  
  rotBackClock();
  updated = false;
  
}

void moveBprime()
{
  println("Back Prime!");
  
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve[i][0] = bottom[2-i][2];
    bottom[2-i][2] = right[2][i];
    right[2][i] = top[i][0];
    top[i][0] = left[0][2-i];
    left[0][2-i] = reserve[i][0];
  }
  
  rotBackAnti();
  updated = false;
  
}

//Slices
void moveMslice()
{
  println("M Slice!");
  
  for (int j = 0 ; j < 3 ; j++)
  {
    reserve[1][j] = front[1][j];
    front[1][j] = top[1][j];
    top[1][j] = back[1][2-j];
    back[1][2-j] = bottom[1][j];
    bottom[1][j] = reserve[1][j];
  }
  updated = false;
}

void moveMsliceP()
{
  println("M Slice Prime!");
  for (int j = 0 ; j < 3 ; j++)
  {
    reserve[1][j] = back[1][2-j];
    back[1][2-j] = top[1][j];
    top[1][j] = front[1][j];
    front[1][j] = bottom[1][j];
    bottom[1][j] = reserve[1][j];
  }
  updated = false;
}
void moveEslice()
{
  println("E Slice!");
  
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve [i][1] = front[i][1];
    front [i][1] = left[i][1];
    left [i][1] = back[i][1];
    back [i][1] = right[i][1];
    right [i][1] = reserve[i][1];
  }
  updated = false;
}
void moveEsliceP()
{
  println("E Slice Prime!");
  
  for (int i = 0 ; i < 3 ; i++)
  {
    reserve [i][1] = front[i][1];
    front [i][1] = right[i][1];
    right [i][1] = back[i][1];
    back [i][1] = left[i][1];
    left [i][1] = reserve[i][1];
  }
  updated = false;
}
void moveSslice()
{
  println("S Slice!");
  
 for (int i = 0 ; i < 3 ; i++)
  {
    reserve[i][1] = top[2-i][1];
    top[2-i][1] = left[1][i];
    left[1][i] = bottom[i][1];
    bottom[i][1] = right[1][2-i];
    right[1][2-i] = reserve[i][1];
  }
  updated = false;
}
void moveSsliceP()
{
  println("S Slice Prime!");
  
 for (int i = 0 ; i < 3 ; i++)
  {
    reserve[i][1] = bottom[i][1];
    bottom[i][1] = left[1][i];
    left[1][i] = top[2-i][1];
    top[2-i][1] = right[1][2-i];
    right[1][2-i] = reserve[i][1];
  }
  updated = false; 
}

//Rotations
void rotX()
{
  moveLprime();
  moveMsliceP();
  moveR();
}
void rotXprime()
{
  moveL();
  moveMslice();
  moveRprime();
}
void rotY()
{
  moveU();
  moveEsliceP();
  moveDprime();
}
void rotYprime()
{
  moveUprime();
  moveEslice();
  moveD();
}
void rotZ()
{
  moveF();
  moveSslice();
  moveBprime();
}
void rotZprime()
{
  moveFprime();
  moveSsliceP();
  moveB();
}


//Face Rotations
void rotFrontClock()
{
  reserve[0][0] = front[0][2];
  reserve[0][1] = front[1][2];
  reserve[0][2] = front[2][2];
  reserve[1][0] = front[0][1];
  reserve[1][1] = front[1][1];
  reserve[1][2] = front[2][1];
  reserve[2][0] = front[0][0];
  reserve[2][1] = front[1][0];
  reserve[2][2] = front[2][0];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      front[i][j] = reserve[i][j];
    }
  }
  
}

void rotFrontAnti()
{
  reserve[0][0] = front[2][0];
  reserve[0][1] = front[1][0];
  reserve[0][2] = front[0][0];
  reserve[1][0] = front[2][1];
  reserve[1][1] = front[1][1];
  reserve[1][2] = front[0][1];
  reserve[2][0] = front[2][2];
  reserve[2][1] = front[1][2];
  reserve[2][2] = front[0][2];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      front[i][j] = reserve[i][j];
    }
  }
  
}

void rotBackClock()
{
  reserve[0][0] = back[0][2];
  reserve[0][1] = back[1][2];
  reserve[0][2] = back[2][2];
  reserve[1][0] = back[0][1];
  reserve[1][1] = back[1][1];
  reserve[1][2] = back[2][1];
  reserve[2][0] = back[0][0];
  reserve[2][1] = back[1][0];
  reserve[2][2] = back[2][0];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      back[i][j] = reserve[i][j];
    }
  }
  
}

void rotBackAnti()
{
  reserve[0][0] = back[2][0];
  reserve[0][1] = back[1][0];
  reserve[0][2] = back[0][0];
  reserve[1][0] = back[2][1];
  reserve[1][1] = back[1][1];
  reserve[1][2] = back[0][1];
  reserve[2][0] = back[2][2];
  reserve[2][1] = back[1][2];
  reserve[2][2] = back[0][2];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      back[i][j] = reserve[i][j];
    }
  }
  
}

void rotLeftClock()
{
  reserve[0][0] = left[0][2];
  reserve[0][1] = left[1][2];
  reserve[0][2] = left[2][2];
  reserve[1][0] = left[0][1];
  reserve[1][1] = left[1][1];
  reserve[1][2] = left[2][1];
  reserve[2][0] = left[0][0];
  reserve[2][1] = left[1][0];
  reserve[2][2] = left[2][0];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      left[i][j] = reserve[i][j];
    }
  }
  
}

void rotLeftAnti()
{
  reserve[0][0] = left[2][0];
  reserve[0][1] = left[1][0];
  reserve[0][2] = left[0][0];
  reserve[1][0] = left[2][1];
  reserve[1][1] = left[1][1];
  reserve[1][2] = left[0][1];
  reserve[2][0] = left[2][2];
  reserve[2][1] = left[1][2];
  reserve[2][2] = left[0][2];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      left[i][j] = reserve[i][j];
    }
  }
  
}

void rotRightClock()
{
  reserve[0][0] = right[0][2];
  reserve[0][1] = right[1][2];
  reserve[0][2] = right[2][2];
  reserve[1][0] = right[0][1];
  reserve[1][1] = right[1][1];
  reserve[1][2] = right[2][1];
  reserve[2][0] = right[0][0];
  reserve[2][1] = right[1][0];
  reserve[2][2] = right[2][0];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      right[i][j] = reserve[i][j];
    }
  }
  
}

void rotRightAnti()
{
  reserve[0][0] = right[2][0];
  reserve[0][1] = right[1][0];
  reserve[0][2] = right[0][0];
  reserve[1][0] = right[2][1];
  reserve[1][1] = right[1][1];
  reserve[1][2] = right[0][1];
  reserve[2][0] = right[2][2];
  reserve[2][1] = right[1][2];
  reserve[2][2] = right[0][2];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      right[i][j] = reserve[i][j];
    }
  }
  
}

void rotTopClock()
{
  reserve[0][0] = top[0][2];
  reserve[0][1] = top[1][2];
  reserve[0][2] = top[2][2];
  reserve[1][0] = top[0][1];
  reserve[1][1] = top[1][1];
  reserve[1][2] = top[2][1];
  reserve[2][0] = top[0][0];
  reserve[2][1] = top[1][0];
  reserve[2][2] = top[2][0];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      top[i][j] = reserve[i][j];
    }
  }
  
}

void rotTopAnti()
{
  reserve[0][0] = top[2][0];
  reserve[0][1] = top[1][0];
  reserve[0][2] = top[0][0];
  reserve[1][0] = top[2][1];
  reserve[1][1] = top[1][1];
  reserve[1][2] = top[0][1];
  reserve[2][0] = top[2][2];
  reserve[2][1] = top[1][2];
  reserve[2][2] = top[0][2];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      top[i][j] = reserve[i][j];
    }
  }
  
}

void rotBottomClock()
{
  reserve[0][0] = bottom[0][2];
  reserve[0][1] = bottom[1][2];
  reserve[0][2] = bottom[2][2];
  reserve[1][0] = bottom[0][1];
  reserve[1][1] = bottom[1][1];
  reserve[1][2] = bottom[2][1];
  reserve[2][0] = bottom[0][0];
  reserve[2][1] = bottom[1][0];
  reserve[2][2] = bottom[2][0];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      bottom[i][j] = reserve[i][j];
    }
  }
  
}

void rotBottomAnti()
{
  reserve[0][0] = bottom[2][0];
  reserve[0][1] = bottom[1][0];
  reserve[0][2] = bottom[0][0];
  reserve[1][0] = bottom[2][1];
  reserve[1][1] = bottom[1][1];
  reserve[1][2] = bottom[0][1];
  reserve[2][0] = bottom[2][2];
  reserve[2][1] = bottom[1][2];
  reserve[2][2] = bottom[0][2];
  
  for (int i = 0 ; i < 3 ; i++)
  {
    for (int j = 0 ; j < 3 ; j++)
    {
      bottom[i][j] = reserve[i][j];
    }
  }
}

//Algorithms
void JpermL()
{
  println("J perm!");
  moveB();
  moveB();
  moveRprime();
  moveUprime();
  moveR();
  moveB();
  moveB();
  moveLprime();
  moveD();
  moveLprime();
  moveDprime();
  moveL();
  moveL();
  println("Done!");
}

void JpermR()
{
  println("J perm!");
  moveB();
  moveB();
  moveL();
  moveU();
  moveLprime();
  moveB();
  moveB();
  moveR();
  moveDprime();
  moveR();
  moveD();
  moveR();
  moveR();
  println("Done!");
}

void Hperm()
{
  println("H perm!");
  moveMslice();
  moveMslice();
  moveU();
  moveMslice();
  moveMslice();
  moveU();
  moveU();
  moveMslice();
  moveMslice();
  moveU();
  moveMslice();
  moveMslice();
  println("Done!");
}

void Xperm()
{
  println("X Perm!");
  moveMslice();
  moveMslice();
  moveU();
  moveMslice();
  moveMslice();
  moveU();
  moveMslice();
  moveU();
  moveU();
  moveMslice();
  moveMslice();
  moveU();
  moveU();
  moveMslice();
  moveU();
  moveU();
}

void ApermA()
{
}

void ApermB()
{
}

void edgeLeft()
{
  println("Edge Insercion!");
  moveUprime();
  moveLprime();
  moveU();
  moveL();
  moveU();
  moveF();
  moveUprime();
  moveFprime();
  println("Done!");
}

void edgeRight()
{
  println("Edge Insercion!");
  moveU();
  moveR();
  moveUprime();
  moveRprime();
  moveUprime();
  moveFprime();
  moveU();
  moveF();
  println("Done!");
}
