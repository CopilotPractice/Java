
public class ArrayTest02 {

	public static void main(String[] args) {
		
		int[][] score = new int[3][4];
		
		score[0][0] = 100;
		score[0][1] = 99;
		score[0][2] = 98;
		score[0][3] = 97;
		
		score[1][0] = 96;
		score[1][1] = 95;
		score[1][2] = 94;
		score[1][3] = 93;
		
		score[2][0] = 92;
		score[2][1] = 91;
		score[2][2] = 90;
		score[2][3] = 89;
		
		// for¹®Àº º¸Åë Ã¹¹øÂ° ÀÏ¶© i, ÁßÃ¸ j, ÁßÃ¸ k
		for(int i=0 ; i<3 ; i++){
			for(int j=0 ; j<4 ; j++){
				System.out.println("score[" + i + "][" + j + "]:" + score[i][j]);
			}
		}
		
		System.out.println("##################");
		
		for(int i=0 ; i<score.length ; i++){
			for(int j=0 ; j<score[i].length ; j++){
				System.out.println("score[" + i + "][" + j + "]:" + score[i][j]);
			}
		}
		
	}

}
