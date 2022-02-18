
public class StringTest02 {

	public static void main(String[] args) {
		String str = "Hello, World!";
		System.out.println(str.length());
		
		String str2 = str.substring(7);
		System.out.println(str2);
		
		String str3 = str.substring(3,8);
		System.out.println(str3);
		
		String str4 = "Hello, World!";
		System.out.println(str == str4?"같음":"다름");
		
		String str5 = new String("Hello, World!");
		System.out.println(str == str5?"같음":"다름");
	
		if(str.equals("Hello,World!"))
			System.out.println("str이 가지고 있는 문자열은[Hello, World!]문자열과 동일");
		if("Hello, World".equals(str))
			System.out.println("[Hello, World!]문자열은 str이 가지고 있는 문자열과 동일!");
		
		if(str.equals(str4)) System.out.println("str과 str4는 동일한 문자열 저장");
		if(str.equals(str5)) System.out.println("str과 str5는 동일한 문자열 저장");
	}

}
