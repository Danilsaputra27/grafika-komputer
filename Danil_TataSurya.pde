float sunRadius = 75;
float mercuryRadius = 15;
float venusRadius = 23;
float earthRadius = 25;
float marsRadius = 21;
float jupiterRadius = 50;
float saturnRadius = 45;
float uranusRadius = 35;
float neptuneRadius = 33;

float sunJarak = 0;
float mercuryJarak = 150;
float venusJarak = 200;
float earthJarak = 250;
float marsJarak = 300;
float jupiterJarak = 400;
float saturnJarak = 420;
float uranusJarak = 500;
float neptuneJarak = 580;

float sunAngle = 0;
float mercuryAngle = 0;
float venusAngle = 0;
float earthAngle = 0;
float marsAngle = 0;
float jupiterAngle = 0;
float saturnAngle = 0;
float uranusAngle = 0;
float neptuneAngle = 0;

float orbitKecepatan = 0.01;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(200);
  translate(width / 2, height / 2);
  drawPlanet(color(255, 255, 0), sunJarak, sunAngle, sunRadius);
  drawPlanet(color(192, 192, 192), mercuryJarak, mercuryAngle, mercuryRadius);
  drawPlanet(color(244, 204, 75), venusJarak, venusAngle, venusRadius);
  drawPlanet(color(0, 0, 255), earthJarak, earthAngle, earthRadius);
  drawPlanet(color(255, 0, 0), marsJarak, marsAngle, marsRadius);
  drawPlanet(color(210, 180, 140), jupiterJarak, jupiterAngle, jupiterRadius);
  drawPlanet(color(255, 215, 0), saturnJarak, saturnAngle, saturnRadius);
  drawPlanet(color(175, 238, 238), uranusJarak, uranusAngle, uranusRadius);
  drawPlanet(color(0, 0, 128), neptuneJarak, neptuneAngle, neptuneRadius);
  updateAngles();
}

void drawPlanet(color planetColor, float Jarak, float angle, float radius) {
  translate(Jarak * cos(angle), Jarak * sin(angle), 0);
  fill(planetColor);
  sphere(radius);
  translate(-Jarak * cos(angle), -Jarak * sin(angle), 0);
}

void updateAngles() {
  sunAngle += orbitKecepatan;
  mercuryAngle += orbitKecepatan * 4;
  venusAngle += orbitKecepatan * 2;
  earthAngle += orbitKecepatan;
  marsAngle += orbitKecepatan * 0.7;
  jupiterAngle += orbitKecepatan * 0.3;
  saturnAngle += orbitKecepatan * 0.2;
  uranusAngle += orbitKecepatan * 0.15;
  neptuneAngle += orbitKecepatan * 0.1;
}
