
public class ExceptionEx3 {

	public static void main(String[] args) {
		try{
			int[] num = new int[2];
			num[0] = 1;
			num[1] = 2;
			num[2] = 3;
			System.out.println("1, 2 입력");
		}catch(ArrayIndexOutOfBoundsException e){
			System.out.println("배열 인덱스 문제");
		}finally{
			System.out.println("에러발생여부와 상관없이 실행하겠습니다!");
		}
		System.out.println("종료!");
	}

}
