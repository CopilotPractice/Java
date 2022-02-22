
public class ExceptionEx3 {

	public static void main(String[] args) {
		try{
			int[] num = new int[2];
			num[0] = 1;
			num[1] = 2;
			System.out.println("1,2입력");
		}catch(ArrayIndexOutOfBoundsException e){
			System.out.println("배열 인덱스 문제");
		}finally{
			System.out.println("에러 발생 여부와는 상관없이 실행");
		}
		System.out.println("종료!");
	}

}
