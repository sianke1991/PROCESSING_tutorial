//13부: Nested for Loop
//    for (int y=0; y<=height; y+=spacing) {
//      for (int x=0; x<=width; x+=spacing) {
//        ellipse(x, y, 100, 100);
//      } //x loop
//    } //y loop
//    내부에 있는 x loop를 하나의 단위로 보고 이것을 다른 방향(y 방향)으로 반복하기 위해 
//    y loop를 사용했다고 볼 수 있다.
//  1. noLoop();
//    setup 함수 내에서 호출하여 draw 함수를 단 한 번만 실행하게 만든다.
//  2. redraw();
//    void mousePressed() {  //마우스를 클릭할 때 마다
//      redraw();            //draw 함수를 다시 한 번 실행하게 만든다.
//    }
//    void mouseMoved() {    //마우스 커서를 움직일 때 마다
//      redraw();            //draw 함수를 다시 한 번 실행하게 만든다.
//    }
//  3. 벽돌 쌓기 패턴
      float gfDiameter = 0.0;
      float gfDiameter2 = 0.0;
      void setup() {
        size(1200, 900);
        gfDiameter = width/25.0;
        noFill();
        stroke(0);
        strokeWeight(1);
        for (int y=0; y<6; y++) {
          boolean isOdd = y%2==1;
          float lfCenterY = gfDiameter/2.0+gfDiameter*sin(PI/3.0)*y;
          for (int x=0; x<=25; x++) {
            float lfCenterX = isOdd ? (gfDiameter*(x+0.5)) : (gfDiameter*x);
            ellipse(lfCenterX, lfCenterY, gfDiameter, gfDiameter);
          } //x loop
        } //y loop
      }
//  4. map 함수를 사용한 변수의 범위 제한
      void draw() {
        background(191);
        noFill();
        stroke(0);
        strokeWeight(1);
        gfDiameter2 = map(mouseX, 0, width, 50, 450);
//      마우스 커서 위치에 따라 변수 gfDiameter2가 변하되, 마우스 커서가 좌측 끝까지 가더라도 gfDiameter2는 50 미만으로 감소하지 않고
//      또한 우측 끝까지 가더라도 gfDiameter2는 450 초과로 증가하지 않도록 만든다.
        ellipse(width/2.0, height/3.0*2.0, gfDiameter2, gfDiameter2);
//      마우스 커서의 위치에 따라 크기가 변하는 원을 그리는데, 해당 원의 크기는 일정 범위 안에서만 변하게 된다.        
        
        

        for (int y=0; y<6; y++) {
          boolean isOdd = y%2==1;
          float lfCenterY = gfDiameter/2.0+gfDiameter*sin(PI/3.0)*y;
          for (int x=0; x<=25; x++) {
            float lfCenterX = isOdd ? (gfDiameter*(x+0.5)) : (gfDiameter*x);
            ellipse(lfCenterX, lfCenterY, gfDiameter, gfDiameter);
          } //x loop
        } //y loop
      }
 
