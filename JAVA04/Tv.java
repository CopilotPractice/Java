
public class Tv {
	
	// Tv Ŭ������ 3���� ���������, 3���� �޼���� �����Ǿ��ִ�.
	
	String color; // ����
	boolean power; // ���� �������� true(on)/false(off)
	int channel; // ���� ���̴� tv�� ä��
	
	void power(){
		power = !power;
	}
	
	void channelUp(){
		channel++;
	}
	
	void channelDown(){
		channel--;
	}

}
