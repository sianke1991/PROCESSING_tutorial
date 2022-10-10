//12부: for Loop Practice
//  1. map(value, start1, stop1, start2, stop2)
//                -------------  ------  -----
//                      ①         ②     ③
//    ①: value가 본래 취하는 값의 범위
//    ②: value가 start1일 경우 start2를 반환한다.
//    ③: value가 stop1일 경우 stop2를 반환한다.
//    value가 그 외의 값일 경우 [반환값이 value에 대한 일차함수가 되도록 하는 값]을 반환한다.
//    e.g. 섭씨 온도를 받아서 화씨 온도를 반환하는 함수
      float celsiusToFahrenheit(float tempC) {
        return map(tempC, 0, 100, 32, 212);
        //섭씨 온도가 0 도에서 100 도로 변하는 동안 화씨 온도는 32 도에서 212 도로 변한다.
      }
      
      void setup() {
        size(500, 500);
        background(239);
        //doStuff0(); //예제0
        //doStuff1(); //예제1
        //doStuff2(); //예제2
        //doStuff3(); //예제3
        //doStuff4(); //예제4
        //doStuff5(); //예제5
      }
  
      void doStuff0() {
        strokeWeight(2);
        for (int i=0; i<11; i++) {
          stroke(map(i, 0, 10, 31, 191)); //i의 값이 증가함에 따라 점진적으로 선의 색이 밝아지게 설정한다.
          line(map(i, 0, 10, 0, width/2.0), height, map(i, 0, 10, 0, width/2.0)+width/2.0, 0);
        }
      }
      
      void doStuff1() {
        strokeWeight(2);
        stroke(0);
        noFill();
        for (int i=0; i<11; i++) {
          ellipse(map(i, 0, 10, 0, width), height/2.0, width/10.0, width/10.0);
        }
      }
      
      void doStuff2() {
        strokeWeight(2);
        stroke(0);
        noFill();
        for (int i=0; i<21; i++) {
          ellipse(map(i, 0, 20, 0, width), height/2.0, width/5.0, width/5.0);
        }
      }
      
      void doStuff3() {
        strokeWeight(2);
        stroke(0);
        noFill();
        for (int i=0; i<16; i++) {
          float diameter = map(i, 0, 15, 0, width*0.95);
          ellipse(width/2.0, height/2.0, diameter, diameter);
        }
      }
      
      void doStuff4() {
        strokeWeight(2);
        stroke(0);
        for (int i=0; i<16; i++) {
          float diameter = map(i, 0, 15, width*0.95, 0);
          fill(map(i, 0, 15, 15, 239));
          ellipse(width/2.0, height/2.0, diameter, diameter);
        }
      }
      
      void doStuff5() {
        noStroke();
        colorMode(HSB, 360, 100, 100, 100);
        for (int i=0; i<200; i++) {
          fill(map(i, 0, 199, 0, 359), 100, 100);
          rect(map(i, 0, 200, 0, width), height/3.0, width/200.0, height/6.0);
        }
        colorMode(RGB, 255, 255, 255, 255); //colorMode를 디폴트로 복구시킨다.
      }
