
public class RefenceParameterTest {

	public static void main(String[] args) {
		
			Data myData = new  Data();
			myData.num = 10;
			System.out.println("main() ���� myData.num:"+myData.num);
			
			RefenceParameterTest.change(myData);
			System.out.println("change() ��� �� main() ���� myData.num:"+myData.num);
			
	}
	
	public static void change(Data data){ //Data Ÿ���� �������̴�
			//
		data.num = 1000;
		System.out.println("change()���� data.num:"+data.num);
	}

}
