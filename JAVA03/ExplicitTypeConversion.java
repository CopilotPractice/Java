public class ExplicitTypeConversion {
	public static void main(String[] args) {
		int myInt = 100;
		//byte myByte = myInt; // intŸ���� �� ūŸ���̹Ƿ�, �� ���� Ÿ���� byte ������ �� ������ ����.
		// ��ȣ�� ����ؼ�, �տ� ����� Ÿ���� ������� ������´�. (����صд�)
		byte myByte = (byte) myInt; 
		
		double doubleNum = 3.14159265358979323846;
		System.out.println("double : " + doubleNum);
		
		float floatNum = (float) doubleNum;
		System.out.println("float : " + floatNum);
		
		long longNum = (long) floatNum;
		System.out.println("long : " + longNum);
		
		int intNum = (int) longNum;
		System.out.println("int : " + intNum);
		
		short shortNum = (short) intNum;
		System.out.println("short : " + shortNum);
		
		byte byteNum = (byte) shortNum;
		System.out.println("byte : " + byteNum);		
	
		
	}

}
