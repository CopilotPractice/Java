
public class WhileTest01 {

	public static void main(String[] args) {
		
		int i=1;
		
		while(i <= 5){
			// i:1 - true - ���� i++
			// i:2 - true - ���� i++
			// i:3 - true - ���� i++
			// i:4 - true - ���� i++
			// i:5 - true - ���� i++
			// i:6 - false - while�� ����
			System.out.println("�ټ��� �ݺ��մϴ�. ���� i :" + i);
			i++;
		}
		System.out.println("���ೡ!");
	}

}
