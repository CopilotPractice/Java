
public class ForTest01 {

	public static void main(String[] args) {
		
		
//		System.out.println("다섯번 출력합니다.");
//		System.out.println("다섯번 출력합니다.");
//		System.out.println("다섯번 출력합니다.");
//		System.out.println("다섯번 출력합니다.");
//		System.out.println("다섯번 출력합니다.");
		
		//  반복기준변수  ; 조건식  ; 증감식(기준변수)
		for(int i=1 ; i<=5 ; i++){
			// i=1, 1<=5 true -> 코드 실행 -> i++
			// i=2, 2<=5 true -> 코드 실행 -> i++
			// i=3, 3<=5 true -> 코드 실행 -> i++
			// i=4, 4<=5 true -> 코드 실행 -> i++
			// i=5, 5<=5 true -> 코드 실행 -> i++
			// i=6, 6<=5 false
			System.out.println("다섯번 출력합니다!");
		}
		
		for(int i=0 ; i<5 ; i++){
			System.out.println("얘도 다섯번 출력합니다!");
		}
		
		
		
	}

}
