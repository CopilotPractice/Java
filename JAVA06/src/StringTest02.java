
public class StringTest02 {

	public static void main(String[] args) {
		String str = "Hello, World!";
		System.out.println(str.length());
		
		String str2 = str.substring(7);
		System.out.println(str2);
		
		String str3 = str.substring(3,8);
		System.out.println(str3);
		
		String str4 = "Hello, World!";
		System.out.println(str == str4?"����":"�ٸ�");
		
		String str5 = new String("Hello, World!");
		System.out.println(str == str5?"����":"�ٸ�");
	
		if(str.equals("Hello,World!"))
			System.out.println("str�� ������ �ִ� ���ڿ���[Hello, World!]���ڿ��� ����");
		if("Hello, World".equals(str))
			System.out.println("[Hello, World!]���ڿ��� str�� ������ �ִ� ���ڿ��� ����!");
		
		if(str.equals(str4)) System.out.println("str�� str4�� ������ ���ڿ� ����");
		if(str.equals(str5)) System.out.println("str�� str5�� ������ ���ڿ� ����");
	}

}
