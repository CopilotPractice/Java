
public class WhileTest01 {

	public static void main(String[] args) {
		
		int i=1;
		
		while(i <= 5){
			// i:1 - true - 실행 i++
			// i:2 - true - 실행 i++
			// i:3 - true - 실행 i++
			// i:4 - true - 실행 i++
			// i:5 - true - 실행 i++
			// i:6 - false - while문 종료
			System.out.println("다섯번 반복합니다. 현재 i :" + i);
			i++;
		}
		System.out.println("실행끝!");
	}

}
