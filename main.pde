boolean running = false;
Model model = null;
View view = null;

void setup() {
    size(window.innerWidth, window.innerHeight);
    frameRate(10);
    background(0);

    model = new Model(new GridSpace(100, 100), new Population(2500, 4, 2500, 3));
    model.randomizeSpace();
    view = new View(model);
}

void draw() {
    fadeToBlack();
    if( running == true ) {
        model.update();
    }
    view.draw();
}

void fadeToBlack() {
    noStroke();
    fill(0, 70);
    rectMode(CORNER);
    rect(0, 0, width, height);
}

void mousePressed() {
    running = (running == true) ? false : true;
}