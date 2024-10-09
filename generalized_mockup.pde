// Define global variables for fonts and images
PFont regularFont, boldFont, italicFont;
PImage backgroundImg, abstractImg, qrCodeImg1, qrCodeImg2;

// Data structure to hold component information
String[] componentData;

void setup() {
  size(1260, 360);  // 32:9 ratio (double 16:9)
  
  // Load fonts
  regularFont = createFont("EBGaramond-Regular.ttf", 16);
  boldFont = createFont("EBGaramond-Bold.ttf", 38);
  italicFont = createFont("EBGaramond-Italic.ttf", 76);
  
  // Load images
  backgroundImg = loadImage("background.jpg");
  abstractImg = loadImage("abstract.jpg"); // im not sure that this is adaptable 
  qrCodeImg1 = loadImage("qrcode.jpg");
  
  // Initialize component data
  componentData = new String[7];  // number of components -- this can be changed if we realize we want more/less but i think it is going to have to be standardized 
  loadComponentData();  // Load data from external source (e.g., database)
}

void loadComponentData() {
  // This method would typically load data from an external source
  // For now, we'll use placeholder data
  componentData[0] = "Main Title";
  componentData[1] = "Subtitle";
  componentData[2] = "Research Question";
  componentData[3] = "Authors";
  componentData[4] = "Abstract text goes here...";
  componentData[5] = "abstract.jpg";  // Filename or path to graphic
  componentData[6] = "Additional information";
}

void displayTitle() {
  textFont(italicFont, 76);
  textAlign(LEFT);
  fill(0);
  text(componentData[0], 50, 150);
}

void displaySubtitle() {
  textFont(boldFont, 38);
  text(componentData[1], 50, 100);
}

void displayQuestion() {
  textFont(regularFont, 38);
  text(componentData[2], 50, 250);
}

void displayAuthors() {
  textFont(regularFont, 16);
  text(componentData[3], 50, 300);
}

void displayAbstract() {
  textFont(regularFont, 18);
  fill(255);
  text(componentData[4], 620, 100, 400, 200);  // Constrain text to a box
}

void displayGraphic() {
  PImage graphic = loadImage(componentData[5]);
  image(graphic, 850, 90, 300, 200);  // Adjust size and position as needed
}

void displayAdditionalInfo() {
  textFont(regularFont, 12);
  text(componentData[6], 1060, 100, 180, 200);  // Constrain text to a box
}


void draw() {
  background(backgroundImg);
  
  displayTitle();
  displaySubtitle();
  displayQuestion();
  displayAuthors();
  displayAbstract();
  displayGraphic();
  displayAdditionalInfo();
}
