public class ImplicitTypeConversion {
	public static void main(String[] args) {
		byte myByte = 100;
		System.out.println(myByte);
		int myInt = myByte; // 100 ���� byte���� int�� ����ȯ�� �߻��ߴ�!
		System.out.println(myInt);
		
		byte byteNum = 100;
		System.out.println("byte : " + byteNum);
		
		short shortNum = byteNum;
		System.out.println("short : " + shortNum);
		
		int intNum = shortNum;
		System.out.println("int : " + intNum);
		
		long longNum = intNum;
		System.out.println("long : " + longNum);
		
		float floatNum = longNum;
		System.out.println("float : " + floatNum);
		
		double doubleNum = floatNum;
		System.out.println("double : " + doubleNum);

	}
}
