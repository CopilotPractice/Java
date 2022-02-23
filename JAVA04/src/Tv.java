
public class Tv {
	
	// Tv 클래스는 3개의 멤버변수와, 3개의 메서드로 구성되어있다.
	
	String color; // 색깔
	boolean power; // 전원 켜짐여부 true(on)/false(off)
	int channel; // 현재 보이는 tv의 채널
	
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
