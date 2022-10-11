//18.2부: PROCESSING function: lerp(2)
//  4. 두 점 사이를 이동하는 애니메이션 만들기
      float gfPosX;
      float gfPosY;
      float gfTargetX;
      float gfTargetY;
      void setup() {
        size(1200, 900);
        gfPosX = random(width);   //0 이상 width 미만의 임의의 실수를 gfPosX에 할당한다.
        gfPosY = random(height);  //0 이상 height 미만의 임의의 실수를 gfPosY에 할당한다.
        gfTargetX = gfPosX;
        gfTargetY = gfPosY;
      }
      void draw() {
        background(191);
        if (frameCount%3==0) {
          gfPosX = lerp(gfPosX, gfTargetX, .2); //(gfPosX, gfPosY에 있는 점이 목표 위치 (gfTargetX, gfTargetY)로 이동하는데,
          gfPosY = lerp(gfPosY, gfTargetY, .2); //매 3 프레임마다 남은 거리의 20%를 이동한다.
        }
        ellipse(gfPosX, gfPosY, 20, 20);
      }
      void mousePressed() {
        gfTargetX = mouseX; //화면 클릭 시 목표 지점이 갱신된다.
        gfTargetY = mouseY;
      }
