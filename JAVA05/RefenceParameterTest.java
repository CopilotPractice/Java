
public class RefenceParameterTest {

	public static void main(String[] args) {
		
			Data myData = new  Data();
			myData.num = 10;
			System.out.println("main() 안의 myData.num:"+myData.num);
			
			RefenceParameterTest.change(myData);
			System.out.println("change() 사용 후 main() 안의 myData.num:"+myData.num);
			
	}
	
	public static void change(Data data){ //Data 타입은 참조형이다
			//
		data.num = 1000;
		System.out.println("change()내부 data.num:"+data.num);
	}

}
