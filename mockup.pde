PFont f, EBGaramondRegular, EBGaramondBoldItalic;
PImage img, abs, qr;
int y;

void setup(){
  size(1260,360);
  f = createFont("EBGaramond-Regular.ttf", 16, true);
  EBGaramondRegular = createFont("EBGaramond-Regular.ttf", 38);
  EBGaramondBoldItalic = createFont("EBGaramond-BoldItalic.ttf", 76);
  img = loadImage("background.jpg");  
  abs = loadImage("abstract.jpg");
  //qr = loadImage("fakeQR.jpg");
}

void draw(){
  background(img);
  image(abs, 850, 90);
  //image(qr, 1105, 300);
  textFont(f);
  text("Duke Institute for Brain Sciences presents...", 50,50);
  
  
  // title and question
  
  textFont(EBGaramondBoldItalic);
  textAlign(LEFT);
  text("communication", 50, 150);
 
  textFont(EBGaramondRegular);
  text("your brain on", 50, 100);
  text("Does speech have power?", 50, 250);
  // body 
  fill(255); 
  textSize(18);
  text("Patients suffering from de-\nbilitating neuro-\ndegenerative diseases often\nlose the ability to\ncommunicate, detrimentally\naffecting their quality of\nlife. This study restored\ncommunication by decoding\nsignals directly from the\nbrain to enable neural\nspeech prostheses.", 620, 100);
  // side
  
  textSize(30);
  text("A Wireless µECoG Prosthesis for Speech", 650, 50);
  textSize(12);
  text("ask your questions:", 1100, 300);
  text("learn more:", 1100, 330);
  
  textSize(10);
  text("Figure 1. Neural circuits mediating food \n cue-reactivity: the influence of internal and \n external factors. (A) Cue-reactivity network \n(red), “interface area” (violet), and “cue-regulation” \n network (blue).  Dashed circles represent medial structures on the \n lateral surface. OFC may represent an “interface” \n area, and serve as a target region around which \n a push-pull balance is reached \n between the cue-reactivity and the cue-regulation \n circuits. ACC, anterior cingulate cortex; AMY, amygdala; \n CAU, caudate; dlPFC, dorsolateral prefrontal cortex; HIPP, \n hippocampus; INS, insula; MC, motor cortex; NAc, \n nucleus accumbens; OC, occipital cortex; \n OFC, orbitofrontal co", 1060, 100);




  
  
  
  
  
  //text("Duke Institute for Brain Sciences presents...",10,100);
  //fill(255); // Set fill color to white for body text
  //text("Patients suffering from de-\nbilitating neuro-\ndegenerative diseases often\nlose the ability to\ncommunicate,detrimentally\naffecting their quality of\nlife. This study restored\ncommunication by decoding\nsignals directly from the\nbrain to enable neural\nspeech prostheses.", 700, 120);
  //// Side text
  //text("A Wireless µECoG Prosthesis for Speech", 800, 50);
  //// Bottom-right: "ask your questions" & "learn more"
  //text("ask your question:", 1100, 300);
  //text("learn more:", 1100, 320);
}
