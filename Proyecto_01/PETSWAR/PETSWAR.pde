int value=1, jugador1=0, jugador2=0, t=0, ganador;
PFont titulo,titulo2,texto;
float vida1=120, vida2=120, poder=10;

class mascotas
{
  String nombre;
  int display;
  float vida;
  
  
  mascotas(String nombre_, int display_, float vida_)
  {
    nombre = nombre_;
    display = display_;
    vida = vida_;
  }
  
  void display()
  {
    switch (display)
    {
      case 1:
      //bichi
      stroke(0);
      strokeWeight(1);   
      fill (#5FBC41);
      triangle (155,235,195,235,172,275);//cola
      rect (150,80,50,70,100);
      fill (#FAFCFA);
      rect (155,90,40,60,100);
      fill (#5FBC41);
      rect (145,145,60,95,100);
      fill (#FAFCFA);
      rect (150,145,50,90,100);
      fill (#9FA29D);
      rect (160,235,5,30,20);
      rect (183,235,5,30,20);
      rect (152,255,20,5,20);
      rect (176,255,20,5,20);
      fill (#E0C248);
      ellipse (165,110,10,10);//ojos
      ellipse (185,110,10,10);
      fill (#FFFF62);
      triangle(170,125,180,125,175,138);//pico
      break;
      
      case 2:
      //yuki
      stroke(0);
      strokeWeight(1);   
      fill (#FCFCDB);
      rect (150,80,80,80,20); //cabeza
      triangle (155,83,180,80,174,55);//orejas
      triangle (200,80,225,82,200,55);
      rect (130,210,50,50,100);//piernas
      rect (200,210,50,50,100);
      rect (140,160,100,100,20);// cuerpo
      fill (255);
      rect (150,170,80,80,20);
      fill (#FCFCDB);
      rect (150,240,40,20,100);
      rect (195,240,40,20,100);
      fill (#C2E9EA);
      noStroke();
      ellipse (173,110,18,18);
      ellipse (207,110,18,18);
      fill (#F091C0);
      ellipse (190,130,10,10);
      break;
      
      case 3:
      //kenji
      stroke(0);
      strokeWeight(1);   
      fill (#766C71);
      rect (150,80,80,80,20); //cabeza
      triangle (155,85,180,80,174,55);//orejas
      triangle (198,80,225,84,200,55);
      fill (255);
      rect (155,85,70,70,200,20,20,20);
      fill (#766C71);
      rect (130,225,50,50,100);//piernas
      rect (200,225,50,50,100);
      rect (150,160,80,120,20);// cuerpo
      fill (255);
      rect (160,170,60,90,20);
      rect (145,260,40,20,100);
      rect (190,260,40,20,100);
      noStroke();
      fill (#E8D844);
      ellipse (175,110,15,15);
      ellipse (205,110,15,15);
      fill (#F091C0);
      ellipse (190,130,10,10);
      break;
      
      case 4:
      //loba
      stroke(0);
      strokeWeight(1);   
      fill (#CBCBCB);
      rect (150,80,80,80,20); //cabeza
      triangle (152,86,180,80,167,55);//orejas
      triangle (200,80,230,89,220,55);
      fill (255);
      noStroke();
      rect (153,90,45,70,20,20,20,20);
      rect (183,90,45,70,20,20,20,20);
      stroke(0);
      strokeWeight(1);
      fill (#CBCBCB);
      rect (125,215,30,40,100);//piernas
      rect (225,215,30,40,100);
      fill (#CBCBCB);
      rect (145,160,90,100,20);// cuerpo
      fill (255);
      rect (145,165,90,95,40);

      fill (255);
      rect (133,240,40,20,100);//patas
      rect (203,240,40,20,100);
      
      fill (#C2E9EA);
      ellipse (175,110,15,15);
      fill (#B48F49);
      ellipse (205,110,15,15);
      fill (0);
      ellipse (190,130,15,13);
      break;
      
      case 5:
      //bobo
      stroke(0);
      strokeWeight(1);   
      fill (#FFF6E5);
      rect(135,100,20,40,10,10,220,20);//orejas
      rect(220,100,20,40,10,10,220,20);//orejas
      rect (150,70,80,90,50); //cabeza
      

      rect (130,225,50,50,100);//piernas
      rect (200,225,50,50,100);
      rect (150,160,80,120,30);// cuerpo
 
      rect (145,260,40,20,100);
      rect (190,260,40,20,100);
      noStroke();
      fill (#553906);
      ellipse (175,110,18,18);
      ellipse (205,110,18,18);
      fill (#A55908);
      ellipse (190,140,14,12);
      break;
    }
  }


}

mascotas bichi,yuki,kenji,loba,bobo;




void setup()
{
  size (600,600);
  
  titulo  = loadFont ("titulo.vlw");
  titulo2 = loadFont ("titulo2.vlw");
  texto   = loadFont ("texto.vlw");
  
  bichi = new mascotas ("bichi",1,50);
  yuki  = new mascotas ("yuki",2,50);
  kenji = new mascotas ("kenji",3,50);
  loba  = new mascotas ("loba",4,50);
  bobo  = new mascotas ("bobo",5,50);
}


void draw()
{
  background (255);
  
  //bichi.display();
  //yuki.display();
  //kenji.display();
  //loba.display();
  //bobo.display();
  
  if (value==1)
  {
    primera();
    //rect (180,250,230,80);
  if (mousePressed && (mouseX>180) && (mouseX<180+235) && (mouseY>250) && (mouseY<250+80))
  {
    value=2;
  }

  }
  
  if (value==2)
  {
    segunda();
    keyPressed();
    if (jugador1!=0 && jugador2!=0)
    {
      value=3;
    }
  }
  
  if (value==3)
  {
    tercera();
    keyPressed();
    
    if (vida1<=0 || vida2<=0)
    {
      value=4;
    }

  }
  
  if (value==4)
  {
    cuarta();
    
    //rect (130,410,150,50,30);
    //rect (330,410,150,50,30);
 
    
    if (mousePressed && (mouseX>130) && (mouseX<=130+150) && (mouseY>410) && (mouseY<=410+50))
    {
      value=1;
      jugador1=0;
      jugador2=0;
      t=0;
      vida1=120;
      vida2=120;
    }
    
    if (mousePressed && (mouseX>330) && (mouseX<=330+150) && (mouseY>410) && (mouseY<=410+50))
    {
      exit();
    }

  }
  
}

void keyPressed()
{
  if (value==2)
  {
  switch (key)
  {
    case '1':
    jugador1=1;
    
    break;
    case '2':
    jugador1=2;
    
    break;
    case '3':
    jugador1=3;
    
    break;
    case '4':
    jugador1=4;
    
    break;
    case '5':
    jugador1=5;
    
    break;
    case '6':
    jugador2=1;
    
    break;
    case '7':
    jugador2=2;
    
    break;
    case '8':
    jugador2=3;
    
    break;
    case '9':
    jugador2=4;
    
    break;
    case '0':
    jugador2=5;
    
    break;
  }
  
  }
  
  if (t==0 && value==3 && key=='z')
  {
    vida1=vida1-(poder*random(0,1));
    println(vida1);
    t=1;
  }
  
  if (t==1 && value==3 && key=='m')
  {
    vida2=vida2-(poder*random(0,1));
    println(vida2);
    t=0;
  }
  
}

void primera()
{
  background (205,223,153);
  textFont(titulo);
  fill (238,116,122);
  text ("PETSWAR",150,200);
  stroke(255);
  strokeWeight(5);
  rect (180,250,230,80,8);
  fill (255);
  textFont(titulo2);
  text ("ENTER",248,300);
  text ("Click en enter para continuar",110,400);
  
}

void segunda()
{
  background (205,223,153);
  textFont(texto);
  fill (238,116,122);
  text ("ELIJAN A SUS PERSONAJES CON UN NÚMERO",100,70);
  
  pushMatrix();
  scale(0.6,0.6);
  translate(-64,95);
  bichi.display();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(174,145);
  yuki.display();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(404,145);
  kenji.display();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(650,145);
  loba.display();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(900,145);
  bobo.display();
  popMatrix();
  
  text ("1",65,255); text ("2",180,255); text ("3",290,255); text ("4",415,255); text ("5",540,255);
  
  
  pushMatrix();
  scale(0.6,0.6);
  translate(-64,495);
  bichi.display();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(174,615);
  yuki.display();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(404,615);
  kenji.display();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(650,615);
  loba.display();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(900,615);
  bobo.display();
  popMatrix();
  
  text ("6",65,500); text ("7",180,500); text ("8",290,500); text ("9",415,500); text ("0",540,500);
  
  text ("ATAQUEN CON    z    &    m    RESPECTIVAMENTE",88,555);
}

void tercera()
{
  background (#92EAF5);
  noFill();
  fill (#7DE04D);
  rect (0,430,600,200);
  fill (#E3A127);
  rect (0,300,600,150);
  fill (#FCFC21);
  ellipse(width/4,height/4,160,160);
  fill (#FAFAF7);
  
  ellipse(500,100,75,60);
  ellipse(445,150,75,60);
  ellipse(450,120,75,60);
  ellipse(400,120,75,60);
  ellipse(440,80,75,60);
  ellipse(510,130,75,60);
  
  fill (#A78436);
  rect (440,320,50,140,40);
  fill (#1E930F);
  ellipse(400,320,75,60);
  ellipse(460,320,75,60);
  ellipse(520,320,75,60);
  ellipse(430,280,75,60);
  ellipse(490,280,75,60);
  ellipse(460,240,75,60);
 
  combatientes();
  
  stroke (0);
  strokeWeight(1);
  fill (random(255),random(255),random(255));
  rect (155,330,40,(vida1)*2);
  rect (380,330,40,(vida2)*2);
}

void combatientes()
{
  switch (jugador1)
  {
  
  case 1:
   pushMatrix();
   scale(0.8,0.8);
   translate(-64,395);
   bichi.display();
   popMatrix();
     break;
    
  case 2:
   pushMatrix();
   scale(0.8,0.8);
   translate(-64,395);
   yuki.display();
   popMatrix();
     break;
    
  case 3:
   pushMatrix();
   scale(0.8,0.8);
   translate(-64,395);
   kenji.display();
   popMatrix();
     break;
    
  case 4:
   pushMatrix();
   scale(0.8,0.8);
   translate(-64,395);
   loba.display();
   popMatrix();
     break;
    
  case 5:
   pushMatrix();
   scale(0.8,0.8);
   translate(-64,395);
   bobo.display();
   popMatrix();
     break; 
  }
  
  
  switch (jugador2)
  {
  case 1:
   pushMatrix();
   scale(0.8,0.8);
   translate(424,415);
   bichi.display();
   popMatrix();
     break;
    
  case 2:
   pushMatrix();
   scale(0.8,0.8);
   translate(424,415);
   yuki.display();
   popMatrix();
     break;
    
  case 3:
   pushMatrix();
   scale(0.8,0.8);
   translate(424,415);
   kenji.display();
   popMatrix();
     break;
    
  case 4:
   pushMatrix();
   scale(0.8,0.8);
   translate(424,415);
   loba.display();
   popMatrix();
     break;
    
  case 5:
   pushMatrix();
   scale(0.8,0.8);
   translate(424,415);
   bobo.display();
   popMatrix();
     break; 
  }
}

void cuarta()
{
  background (205,223,153);
  textFont (titulo2);
  fill (255);
  
  if (vida1>vida2)
  {
    noFill();
    stroke (random(255),random(255),random(255));
    strokeWeight(3);
    rect (80,200,430,130,20);
    text ("¡FELICIDADES JUGADOR 1!",100,250);
    text("ERES LA MEJOR MASCOTA",100,300);
    fill (#FC73CA);
    textFont (texto);
    text("CLICK ENTER PARA VOLVER AL INICIO O EN EXIT PARA SALIR",3,550);
    
    stroke(255);
    strokeWeight(2);
    fill (#FC73CA);
    rect (130,410,150,50,30);
    fill (255);
    text ("ENTER",180,445);
    
    stroke(255);
    strokeWeight(2);
    fill (#FC73CA);
    rect (330,410,150,50,30);
    fill (255);
    text ("EXIT",380,445);
  }
  else if (vida2>vida1)
  {
    noFill();
    stroke (random(255),random(255),random(255));
    strokeWeight(3);
    rect (80,200,430,130,20);
    text ("¡FELICIDADES JUGADOR 2!",100,250);
    text("ERES LA MEJOR MASCOTA",100,300);
    fill (#FC73CA);
    textFont (texto);
    text("CLICK EN ENTER PARA VOLVER AL INICIO O EN EXIT PARA SALIR",3,550);
    
    stroke(255);
    strokeWeight(2);
    fill (#FC73CA);
    rect (130,410,150,50,30);
    fill (255);
    text ("ENTER",180,445);
    
    stroke(255);
    strokeWeight(2);
    fill (#FC73CA);
    rect (330,410,150,50,30);
    fill (255);
    text ("EXIT",380,445);
  }
  
  
}
