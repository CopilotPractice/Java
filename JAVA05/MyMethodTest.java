
public class MyMethodTest {

	public static void main(String[] args) {
		MyMethod myMethod = new MyMethod();
		
		System.out.println(myMethod.plus(10,3));
		int num = myMethod.plus(100,5);
		System.out.println(num);
		
		System.out.println(myMethod.minus(10, 2));
		System.out.println(myMethod.multiplication(10, 2));
		System.out.println(myMethod.division(10, 2));
		System.out.println(myMethod.remainder(8, 2));
		myMethod.printNum(10);
		System.out.println(myMethod.staticPlus(10, 2));
	}

}
