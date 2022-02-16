
public class MyMethod {

	int plus(int num1,int num2){
		int result;
		result =num1+num2;
		//리턴 타입과, 메서드 실제 리턴되는 데이터의 타입은 동일해야한다.
		//일치되지 않더라도 적어도 호환 가능해야 한다.
		return result;
	}
	
	int minus(int num1,int num2){
		int result;
		result =num1-num2;
		//리턴 타입과, 메서드 실제 리턴되는 데이터의 타입은 동일해야한다.
		//일치되지 않더라도 적어도 호환 가능해야 한다.
		return result;
	}
	int multiplication(int num1,int num2){
		int result;
		result =num1*num2;
		//리턴 타입과, 메서드 실제 리턴되는 데이터의 타입은 동일해야한다.
		//일치되지 않더라도 적어도 호환 가능해야 한다.
		return result;
	}
	int division(int num1,int num2){
		int result;
		result =num1/num2;
		//리턴 타입과, 메서드 실제 리턴되는 데이터의 타입은 동일해야한다.
		//일치되지 않더라도 적어도 호환 가능해야 한다.
		return result;
	}
	int remainder(int num1,int num2){
		int result;
		result =num1%num2;
		//리턴 타입과, 메서드 실제 리턴되는 데이터의 타입은 동일해야한다.
		//일치되지 않더라도 적어도 호환 가능해야 한다.
		return result;
	}
	void printNum(int num1){
		System.out.println("입력된 값은["+num1+"] 입니다!");
	}
	static int staticPlus(int num1,int num2){
		return num1 + num2;
	}
}
