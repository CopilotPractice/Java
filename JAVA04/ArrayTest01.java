
public class ArrayTest01 {

	public static void main(String[] args) {
		
		int[] score;
		score = new int[5];
		
		score[0] = 100;
		score[1] = 90;
		score[2] = 80;
		score[3] = 70;
		score[4] = 60;
		// score[5] = 80;
				
		
		System.out.println(score[0]);
		System.out.println(score[1]);
		System.out.println(score[2]);
		System.out.println(score[3]);
		System.out.println(score[4]);
		
		for(int i=0 ; i < 5 ; i++){
			System.out.println("score[" + i + "] : " + score[i]);
		}
		
		for(int i=0 ; i < score.length ; i++){
			System.out.println("score[" + i + "] : " + score[i]);
		}
		System.out.println("#######################");
		
		// pop-quiz : score 배열에 있는 값들을 역순으로 출력 for문 사용해서
		for(int i=4 ; i >= 0 ; i--){
			System.out.println("score[" + i + "] : " + score[i]);
		}
		
		for(int i=score.length - 1 ; i >= 0 ; i--){
			System.out.println("score[" + i + "] : " + score[i]);
		}
		
		//GameChar myMage = new GameChar();
		//GameChar[] myChars = new GameChar[5];
		
	}

}
