
public class IfTest01 {

	public static void main(String[] args) {

		int num1 = 9;
		
		// 단일 if : 실행할지 말지만 선택하고자 할때
		if( num1 >= 10 ){
			System.out.println("num1 값은 10 이상이다!");
		}
		System.out.println("실행끝!");
		
		boolean logined = false;
		
		if( logined ){ // logined : true 일때 실행
			System.out.println("로그인을 환영합니다!");
		}else{ // logined : false 일때 실행 
			System.out.println("로그인 하셔야 사용할 수 있는 서비스입니다.");
		}
		
		
	}

}
