//19.x부: To Sort an ArrayList
      void setup() {
        doStuff0(); //Integer 리스트 정렬
        doStuff1(); //커스텀 클래스 리스트 정렬
        doStuff2(); //열거체 리스트 정렬
      }
//  1. Integer 리스트 정렬
      void doStuff0() {
        ArrayList<Integer> ints = new ArrayList<>();
        for (int i=0; i<20; i++) {
          ints.add(int(sin(i)*20));
        } //i loop
        println(ints.toString()); //[0, 16, 18, 2, -15, -19, -5, 13, 19, 8, -10, -19, -10, 8, 19, 13, -5, -19, -15, 2]
        ints.sort(new java.util.Comparator<Integer>(){
            @Override
            public int compare(Integer a, Integer b){
                return b.compareTo(a); //내림차순 정렬 (a와 b의 순서를 바꾸면 오름차순 정렬을 할 수 있다.)
            }
        });
        println(ints.toString()); //[19, 19, 18, 16, 13, 13, 8, 8, 2, 2, 0, -5, -5, -10, -10, -15, -15, -19, -19, -19]
        java.util.Collections.sort(ints); //오름차순 정렬
        println(ints.toString()); //[-19, -19, -19, -15, -15, -10, -10, -5, -5, 0, 2, 2, 8, 8, 13, 13, 16, 18, 19, 19]
      }

//  2. 커스텀 클래스 리스트 정렬
//    여기서는 Pair라는 클래스를 만들어 Pair 리스트를 정렬해 본다.
      public class Pair implements Comparable<Pair> {
        float first;
        float second;
        public Pair() {}
        public Pair(float first, float second) {
          this.first  = first;
          this.second = second;
        }
        
        @Override
        public int compareTo(Pair that) {
          int signum = (int)Math.signum(this.first-that.first);
          if (signum!=0) return signum;
          return (int)Math.signum(this.second-that.second);
        }
        
        @Override
        public String toString() {
          return new StringBuffer("(").append(this.first).append(", ").append(this.second).append(")").toString();
        }
      }
      void doStuff1() {
        ArrayList<Pair> pairs = new ArrayList<>();
        pairs.add(new Pair(3, 3));
        pairs.add(new Pair(2, 3));
        pairs.add(new Pair(2, 4));
        pairs.add(new Pair(4, 2));
        pairs.add(new Pair(3, 2));
        pairs.add(new Pair(3, 1));
        println(pairs.toString()); //[(3.0, 3.0), (2.0, 3.0), (2.0, 4.0), (4.0, 2.0), (3.0, 2.0), (3.0, 1.0)]
        java.util.Collections.sort(pairs); //Pair 객체의 오름차순 정렬
        println(pairs.toString()); //[(2.0, 3.0), (2.0, 4.0), (3.0, 1.0), (3.0, 2.0), (3.0, 3.0), (4.0, 2.0)]
      }
//  3. 열거체 리스트 정렬
      public enum Suit {
        SPADE,
        DIAMOND,
        CLUB,
        HEART;
      }
      void doStuff2() {
        ArrayList<Suit> suits = new ArrayList<>();
        suits.add(Suit.DIAMOND);
        suits.add(Suit.HEART);
        suits.add(Suit.CLUB);
        suits.add(Suit.CLUB);
        suits.add(Suit.DIAMOND);
        suits.add(Suit.SPADE);
        println(suits); //[DIAMOND, HEART, CLUB, CLUB, DIAMOND, SPADE
        java.util.Collections.sort(suits); //오름차순 정렬
        println(suits); //[SPADE, DIAMOND, DIAMOND, CLUB, CLUB, HEART]
        //열거체 변수를 오름차순 정렬 시, 열거체 변수를 정의한 순서에 따라서 정렬된다. (Suit 내에서 SPADE, DIAMOND, CLUB, HEART 순으로 정의했으므로
        //이 순서대로 정렬된다.)
      }
      
      
      
