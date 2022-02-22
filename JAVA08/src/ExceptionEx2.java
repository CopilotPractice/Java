
public class ExceptionEx2 {

	public static void main(String[] args) {
		int number = 100;
		int result = 0;
		
		for(int i=0; i<10; i++){
			try{
				result = number / (int) (Math.random()*10);
				System.out.println(result);
			}catch(ArithmeticException e){
				System.out.println("0으로 나누어졌습니다. 이번에는 계산x");
			}catch(Exception e){
				System.out.println("하여튼 에러남");
			}
		}
	}

}
