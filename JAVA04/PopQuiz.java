
public class PopQuiz {

	public static void main(String[] args) {
		int sum = 0;
		
		for(int i=0 ; i < 10 ; i++){
			// i:0, true, if1 continue, i++
			// i:1, true, if1:false, if2:false, sum:1, i++
			// i:2, true, if1:true, continue, i++
			// i:3, true, if1:false, if2:false, sum:4, i++
			// i:4, true, if1:true, continue, i++
			// i:5, true, if1:false, if2:false, sum:9, i++
			// i:6 ★★★★★ , true, if1:true, continue, i++
			// i:7, true, if1:false, if2:false, sum:16, i++
			// i:8, true, if1:true, continue, i++
			// i:9, true, if1:false, if2:false, sum:25, i++
			// i:10, false -> for문 종료
			if(i % 2 == 0)
				continue;
			if(i == 6)
				break;
			sum += i;
		}
		System.out.println("최종 sum : " + sum);
	}
}
