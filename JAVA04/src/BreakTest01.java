
public class BreakTest01 {

	public static void main(String[] args) {
		
		for(int i=1 ; i<=10 ; i++){
			if(i >= 4)	break; 
			System.out.println("끝까지 다 반복해서 실행할 수 있을까?! 현재 i값 : " + i);
		}
		System.out.println("실행 끝!");
		
		// while(true){}
		
	}

}
