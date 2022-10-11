//18.1부: PROCESSING function: lerp(1)
//  1. lerp(start, stop, amt)
//    두 값 사이의 특정 위치(비율)에 있는 값을 반환한다.
//    amt가 0.0인 경우 start 값을 반환한다.
//    amt가 1.0인 경우 stop 값을 반환한다.
//    amt가 그 외의 값이라면 [반환값이 amt에 대한 일차함수가 되도록 하는 값]을 반환한다. (내삽 뿐만 아니라 외삽도 가능)
//    예를 들어 10과 70 사이에서 50% 위치의 값은 얼마인가?
//    10과 70 사이의 간격은 60이다.
//    이 60의 50%는 30.0이다.
//    10에서 30.0 만큼 떨어진 곳은 40.0이다.
      println(lerp(10, 70, 0.5)); //40.0
      println(lerp(10, 70, 1.5)); //100.0
//    이 계산 순서를 일반화하면 lerp 함수가 계산하는 방식을 구할 수 있다.
//    start와 stop 사이의 간격은 (stop-start)이다.
//    이 (stop-start)의 amt분은 amt*(stop-start)이다.
//    start에서 amt*(stop-start)만큼 떨어진 곳은
//    start+amt*(stop-start)이다.
//    lerp(start, stop, amt) = start+amt*(stop-start)
//    이 함수를 통해 시작값과 끝값을 알고 있을 때 그 사이의 값을 선형적으로 찾을 수 있다.
//  2. lerpColor
//    두 색 사이의 특정 위치(비율)에 있는 색을 반환한다.
//    lerp와 달리 외삽은 불가능하다.
      size(1200, 900);
      color lc0 = color(204, 127, 0);
      color lc1 = color(31, 63, 204);
      noStroke();
      int liNumRects = 120;
      for (int i=0; i<liNumRects; i++) {
        color lcLerp = lerpColor(lc0, lc1, 1.0/liNumRects*i);
        float lfPositionX = width*0.05+width*0.9/liNumRects*i;
        fill(lcLerp);
        rect(lfPositionX, height*0.05, width*0.9/liNumRects, height*0.1);
      } //i loop
//  3. 점선 만들기
      float lfPositionX1 = width*0.15;
      float lfPositionY1 = height*0.9;
      float lfPositionX2 = width*0.9;
      float lfPositionY2 = height*0.35;
      int liNumDots = 120;
      stroke(0); //point의 색은 stroke로 설정한다.
      for (int i=0; i<liNumDots; i++) {
        float lfPositionXLerp = lerp(lfPositionX1, lfPositionX2, 1.0/liNumDots*i);
        float lfPositionYLerp = lerp(lfPositionY1, lfPositionY2, 1.0/liNumDots*i);
        point(lfPositionXLerp, lfPositionYLerp);
      } //i loop
        

      
