
public class ExceptionEx3 {

	public static void main(String[] args) {
		try{
			int[] num = new int[2];
			num[0] = 1;
			num[1] = 2;
			System.out.println("1,2�Է�");
		}catch(ArrayIndexOutOfBoundsException e){
			System.out.println("�迭 �ε��� ����");
		}finally{
			System.out.println("���� �߻� ���οʹ� ������� ����");
		}
		System.out.println("����!");
	}

}
