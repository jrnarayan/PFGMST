PFont EBGaramondRegular, EBGaramondBoldItalic;

void setup() {
  size(1508, 576); // Set the size to match the image dimensions
  background(0, 50, 150); // Blue background similar to the image
  
  EBGaramondRegular = createFont("EBGaramond-Regular.ttf", 48);
  EBGaramondBoldItalic = createFont("EBGaramond-BoldItalic.ttf", 96);
  
  fill(255); // Set fill color to white
  textFont(EBGaramondBoldItalic);
  textAlign(LEFT);
  text("communication", 50, 150);
  textFont(EBGaramondRegular);
  text("your brain on", 50, 100);
  text("Does speech have power?", 50, 250);
  
  // Body text
  fill(255); // Set fill color to white for body text
  text("[body text]", 800, 120);
  
  // Side text
  text("A Wireless µECoG Prosthesis for Speech", 800, 50);
  
  // Bottom-right: "ask your question" & "learn more"
  text("ask your question:", 1200, 500);
  text("learn more", 1200, 530);
  
  // You can draw other parts like charts, grids, and detailed figures using rect(), ellipse(), and similar shapes.
}

void draw() {
  // Here we keep the initial screen as it is without animation
}
