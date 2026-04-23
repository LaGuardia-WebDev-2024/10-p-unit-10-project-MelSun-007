var starXPos = [];
var starYPos = [];
var star = "📸";
var starTotal = 70;
//detective camera


var planetXPos = [];
var planetYPos = [];
var planet = "🔪";
var planetTotal = 3;
var planetFound = 0;
// knife


setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
fill(0,0,0)
var Crime=["caution","inspection","restricted"];
text(Crime[0],40,40);
text(Crime[1],40,80);
text(Crime[2],40,120);


for(var x=0; x <500; x+= 30){text("🔎", 0,x);}

if(mousePressed){var x=0;
while(x<600){
text("🎇",x,random(0,400));
x+=30}
// Mosquito 
  starXPos
}

}







mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < planetXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, planetXPos[i], planetYPos[i])<15){
      planetXPos.splice(i, 1);
      planetYPos.splice(i, 1);
      planetFound++;
    }
  }
}

var display = function(){
  background(100,100,100,0);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < planetXPos.length; i ++){
    text(planet, planetXPos[i], planetYPos[i]);
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + planet + "s   |   " + planet + " " + planetFound + "/" + planetTotal, 0, 425);

  if(planetFound == planetTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  starXPos = [];
  starYPos = [];
  planetXPos = [];
  planetYPos = [];
  planetFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

  for(var i = 0; i < planetTotal; i++){
    planetXPos.push(random(0,600));
    planetYPos.push(random(0,400));
  }
}