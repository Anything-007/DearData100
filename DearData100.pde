

Table spending;

void setup() {
  size(600,400);
  spending = loadTable("spending.csv", "header");

  for (int i = 0; i < 5; i++) {
    // Print the category of row i
    println(spending.getString(i,"category"));

    // Print the amount_band of row i
    println(spending.getString(i,"amount_band"));
  }
}


float calculateStarSize(String amountBand) {

  if (amountBand.equals("under_5")) {
      return 3;
    }
    else if (amountBand.equals("5_to_15")) {
      return 5;
    }
    else if (amountBand.equals("15_to_40")) {
      return 10;
    }
    else if (amountBand.equals("40_to_100")) {
      return 15;
    }
    else if (amountBand.equals("100_plus")) {
      return 20;
    }
    else{
      return 5;
    }
    

}





void draw(){

  background(0,0,0);
  noStroke();
  for(int i = 0 ; i < spending.getRowCount() ; i++){    
    
    String amountBand = spending.getString(i, "amount_band");
    float starSize = calculateStarSize(amountBand);

    int rotations = 3;

    

   
    
  




    float centreX = 300;
    float centreY = 200;
    float radius = 10 + i * 0.5;
    float angle = i * TWO_PI * rotations / spending.getRowCount();
    float x = centreX + cos(angle) * radius;
    float y = centreY + sin(angle) * radius;


    
    String category = spending.getString(i, "category");

    if (category.equals("Food")) {


    fill(255, 165, 0);
    }
    else if (category.equals("Transport")) {
    fill(0, 150, 255);
    }

    else if (category.equals("Entertainment")) {
    
    fill(255, 0, 0);

    }
    else {
      fill(255);
    }
    
    
    circle(x, y, starSize);




      }


}
