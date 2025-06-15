//  https://youtu.be/SbMf-tUxgGQ?si=GXlysyeboA57_wmP
PImage popart;
int espacio = 2;
float desplazamiento = 10;
float maxDistancia = 100;
int tam = 40;
boolean[][] rotados;

void setup() {
  size(800, 400);
  popart = loadImage("popart.jpg");

  int filas = (height + espacio) / (tam + espacio);
  int columnas = width/2 / tam;
  rotados = new boolean[filas][columnas];
}

void draw() {
  background(255);
  image(popart, 0, 0, width/2, height);

  if (mouseX > width/2) {
    desplazamiento = map(mouseX, width/2, width, 0, 20);
    tam = int(map(mouseX, width/2, width, 20, 60));
  }

  pushMatrix();
  translate(width/2, 0);
  dibujarIlusion(tam, desplazamiento, espacio);
  popMatrix();
}

void dibujarIlusion(int tamano, float desp, int espacioLineas) {
  int filas = (height + espacioLineas) / (tamano + espacioLineas);
  int columnas = width/2 / tamano;

  for (int y = 0; y < filas; y++) {
    int dy = y * (tamano + espacioLineas);
    stroke(150);
    strokeWeight(espacioLineas);
    line(0, dy - espacioLineas/2, width/2, dy - espacioLineas/2);

    for (int x = 0; x < columnas; x++) {
      int dx = x * tamano;
      int offset = (y % 2 == 0) ? int(desp) : -int(desp);
      float cuadroX = dx + offset;
      float cuadroY = dy;
      color baseColor = ((x + y) % 2 == 0) ? color(0) : color(255);

      if (mouseX > width/2) {
        float distMouse = dist(mouseX - width/2, mouseY, cuadroX + tamano/2, cuadroY + tamano/2);
        if (distMouse < maxDistancia) {
          float factor = map(distMouse, 0, maxDistancia, 0.6, 1.0);
          if (baseColor == color(0)) {
            baseColor = lerpColor(color(0), color(100), 1 - factor);
          } else {
            baseColor = lerpColor(color(255), color(150), 1 - factor);
          }
        }
      }

      pushMatrix();
      translate(cuadroX + tamano/2, cuadroY + tamano/2);

      if (y < rotados.length && x < rotados[y].length && rotados[y][x]) {
        rotate(radians(45));
        baseColor = color(random(100, 255), random(100, 255), random(100, 255));
      }

      fill(baseColor);
      noStroke();
      rectMode(CENTER);
      rect(0, 0, tamano, tamano);
      popMatrix();
    }
  }
}

float calcularDesplazamiento(float mouseXPos) {
  return map(mouseXPos, width/2, width, 0, 20);
}

void keyPressed() {
  println("Tecla presionada: " + key);
  if (key == 'n' || key == 'N') {
    desplazamiento = 10;
    tam = 40;
    for (int i = 0; i < rotados.length; i++) {
      for (int j = 0; j < rotados[i].length; j++) {
        rotados[i][j] = false;
      }
    }
  } else if (key == 'w' || key == 'W') {
    tam += 5;
  } else if (key == 'l' || key == 'L') {
    tam = max(10, tam - 5);
  }
}

void mousePressed() {
  if (mouseX > width/2) {
    int relX = mouseX - width/2;
    int col = relX / tam;
    int row = mouseY / (tam + espacio);
    if (row < rotados.length && col < rotados[0].length) {
      rotados[row][col] = !rotados[row][col];
    }
  }
}
