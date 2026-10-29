

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

void draw(){

  background(0,0,0);
  for(int i = 0 ; i < spending.getRowCount() ; i++){    
    float starSize = 5;

    String amountBand = spending.getString(i, "amount_band");
    if (amountBand.equals("under_5")) {
      starSize = 3;

}
    else if (amountBand.equals("5_to_15")) {
      starSize = 5;
    }
    else if (amountBand.equals("15_to_40")) {
      starSize = 10;
    }
    else if (amountBand.equals("40_to_100")) {
      starSize = 15;
    }
    else if (amountBand.equals("100_plus")) {
      starSize = 20;
    }
  




    int column = i % 10;
    int row = i / 10;

    
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
    
    
    circle(50 + column * 45, 50 + row * 10, starSize);




      }


}
