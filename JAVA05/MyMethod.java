
public class MyMethod {

	int plus(int num1,int num2){
		int result;
		result =num1+num2;
		//���� Ÿ�԰�, �޼��� ���� ���ϵǴ� �������� Ÿ���� �����ؾ��Ѵ�.
		//��ġ���� �ʴ��� ��� ȣȯ �����ؾ� �Ѵ�.
		return result;
	}
	
	int minus(int num1,int num2){
		int result;
		result =num1-num2;
		//���� Ÿ�԰�, �޼��� ���� ���ϵǴ� �������� Ÿ���� �����ؾ��Ѵ�.
		//��ġ���� �ʴ��� ��� ȣȯ �����ؾ� �Ѵ�.
		return result;
	}
	int multiplication(int num1,int num2){
		int result;
		result =num1*num2;
		//���� Ÿ�԰�, �޼��� ���� ���ϵǴ� �������� Ÿ���� �����ؾ��Ѵ�.
		//��ġ���� �ʴ��� ��� ȣȯ �����ؾ� �Ѵ�.
		return result;
	}
	int division(int num1,int num2){
		int result;
		result =num1/num2;
		//���� Ÿ�԰�, �޼��� ���� ���ϵǴ� �������� Ÿ���� �����ؾ��Ѵ�.
		//��ġ���� �ʴ��� ��� ȣȯ �����ؾ� �Ѵ�.
		return result;
	}
	int remainder(int num1,int num2){
		int result;
		result =num1%num2;
		//���� Ÿ�԰�, �޼��� ���� ���ϵǴ� �������� Ÿ���� �����ؾ��Ѵ�.
		//��ġ���� �ʴ��� ��� ȣȯ �����ؾ� �Ѵ�.
		return result;
	}
	void printNum(int num1){
		System.out.println("�Էµ� ����["+num1+"] �Դϴ�!");
	}
	static int staticPlus(int num1,int num2){
		return num1 + num2;
	}
}
