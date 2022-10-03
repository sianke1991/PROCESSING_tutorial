//10부: My Own Painting Software
//  1. constrain(amt, low, high)
//    amt가 low 이상 high 이하의 값이라면 amt 그대로를 반환한다.
//    amt가 low보다 작은 값이라면 low 값을 반환한다.
//    amt가 high보다 큰 값이라면 high 값을 반환한다.
//    변수의 값을 특정 영역 안으로 제한할 때 사용할 수 있다.
//  2. save(filename)
//    화면을 이미지 파일로 저장한다. save 함수의 인자는 생성할 이미지 파일의 이름이다.
//  3. str(var)
//    boolean, int, float 등의 변수를 String으로 변환하여 반환한다.
//    str(year())를 예로 들면, int 값인 year()를 String으로 변환하여 반환한다.
      float brushSize;
      int   colorRed;
      int   colorGreen;
      int   colorBlue;
      final color backgroundColor = color(191);
      
      void setup() {
        size(1200, 900);
        background(backgroundColor);
        brushSize = 10;
        colorRed = 127;
        colorGreen = 127;
        colorBlue = 127;
      }
      
      void draw() {
        if (mousePressed) { //드래그 앤드 드롭으로 여러 지점에 그림을 그리려면 mousePressed 함수를 사용하는 것 대신에 if (mousePressed)를 사용하는 것이 적당하다고 보인다.
          switch (mouseButton) {
            case LEFT:
              noStroke();
              fill(colorRed, colorGreen, colorBlue);
              ellipse(mouseX, mouseY, brushSize, brushSize);
              break;
            case RIGHT:
              noStroke();
              fill(backgroundColor);
              ellipse(mouseX, mouseY, brushSize, brushSize);
            break;
          }
        }
      }
      
      void keyPressed() {
        if (key==CODED) {
          switch (keyCode) {
            case UP:
              brushSize+=5;
              brushSize = constrain(brushSize, 5, 100); //brushSize 값이 주어진 한도를 넘어간 경우 하한 또는 상한치를 갖도록 만든다.
              break;
            case DOWN:
              brushSize-=5;
              brushSize = constrain(brushSize, 5, 100);
              break;
          }
        } else {
          switch (key) {
            case 'r': case 'R':
              colorRed += 16;
              colorRed %= 256;
              break;
            case 'g': case 'G':
              colorGreen += 16;
              colorGreen %= 256;
              break;
            case 'b': case 'B':
              colorBlue += 16;
              colorBlue %= 256;
              break;
            case 's': case 'S':
              save(str(year())+month()+day()+hour()+minute()+second()+".png");
              println("image saved!");
              break;
          }
        }        
      }
