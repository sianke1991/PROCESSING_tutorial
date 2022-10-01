//4.1부 Drawing arc in PROCESSING(1)
      size(1200, 900);
      background(191);
      stroke(0);
      strokeWeight(20);
      fill(63, 63, 255);
//  1. 각의 단위 - 라디안(radian)
//    반지름이 r이고 호의 길이가 l인 부채꼴의 중심각은
//    θ[rad] = l/r 이다. 이 때 중심각의 단위는 라디안이다.
//    반원을 반지름으로 나누면 '3 배에 약간 더'가 나온다. 반원에 해당하는 각은
//    π rad ≈ 3.14159 이다.
//  2. 좌표계에서의 각
//    θ = arctan(y/x)
//    3시 방향을 시작으로 시계방향으로 회전할 때 각이 증가한다.
//    필요에 따라 '한 바퀴를 초과하는' 각 역시 사용할 수 있다.
//  3. 원호그리기
      arc(300, 50, 300, 250, 0, HALF_PI); //중앙의 위치, 가로 직경(지름), 세로 직경, 처음 각, 끝 각을 수치로 입력한다.
                                           //원을 그릴 때 입력한 인자에 시작 각, 끝 각을 더하여 입력한다.
      
      arc(700, 50, 300, 250, HALF_PI, 0); //끝 각은 처음 각보다 값이 커야 한다. 처음 각과 끝 각의 순서를 바꿔서 입력하면
                                           //원호는 그려지지 않는다.
//    Note. 원호에 '면 색'을 지정하면 부채꼴의 색으로 나온다.
//    PROCESSING 에서는 PI(=π), HALF_PI(=π/2), QUARTER_PI(=π/4) 라는 상수를 제공한다.
//  4. 각 변환
      println(radians(90)); //radians는 60분법 각을 입력받아 라이안으로 변환한 값을 반환한다.
//  5. strokeCap - ROUND, SQUARE, PROJECT
//    원호를 그릴 때 선의 끝을 설정할 수 있다. 디폴트는 strokeCap(ROUND)이다.
      fill(63, 63, 255);
      strokeCap(ROUND); //끝을 둥글게 처리한다.
      arc(200, 200, 300, 250, 0, HALF_PI);
      fill(255, 63, 63);
      strokeCap(SQUARE); //끝을 각지게 처리한다.
      arc(500, 200, 300, 250, 0, HALF_PI); 
      fill(63, 255, 63);
      strokeCap(PROJECT); //둥근 strokeCap을 감쌀 수 있도록 각지게 처리한다.
                          //이 설정은 strokeCap(SQUARE) 보다 원호가 길어지는 효과가 있다.
      arc(800, 200, 300, 250, 0, HALF_PI);
      arc(200, 350, 300, 250, 0, HALF_PI);
      
      strokeWeight(1);
      stroke(255, 0, 0, 63);
      line(0, 200-10, 1200, 200-10);
      line(0, 200, 1200, 200);
      line(200-10, 0, 200-10, 900);
      line(200, 0, 200, 900);
//  6. 원호를 그릴 때 추가 옵션 - OPEN, CHORD, PIE
      strokeCap(ROUND);
      stroke(0);
      strokeWeight(5);
      fill(63, 63, 255);
      arc(200, 600, 200, 150, 0, 3*HALF_PI, OPEN); //원호를 그릴 때 추가 옵션을 입력할 수 있다. 
      fill(255, 63, 63);
      arc(500, 600, 200, 150, 0, 3*HALF_PI, CHORD);
      fill(63, 255, 63);
      arc(800, 600, 200, 150, 0, 3*HALF_PI, PIE);
//  7. 각 0 지점을 관통하는 원호 - '한 바퀴를 초과하는' 각의 필요성
//    12시 (3*HALF_PI)에서 시작하여 9시 (PI)에서 끝나는 원호를 그리기 위해 다음과 같이 설정하면 원호가 그려지지 않는다.
      noFill();
      arc(200, 800, 200, 100, 3*HALF_PI, PI);
//    처음 각과 끝 각의 순서를 바꿔서 입력하면 9시에서 시작하여 12시에서 끝나는 원호를 그리게 된다.
      arc(500, 800, 200, 100, PI, 3*HALF_PI);
//    이 경우 끝 각, 9시를 PI 대신 3*PI를 사용하면 원하는 원호를 그릴 수 있다.
      arc(800, 800, 200, 100, 3*HALF_PI, 3*PI);
      
      
