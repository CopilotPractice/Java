
public class Car {
	String color;
	String gearType;
	int	   door;
	
	public Car(){
		this("White","auto",4);
	}
	public Car(String color){
		this(color,"auto",4);
	}
	public Car(String color,String gearType,int door){
		this.color = color;
		this.gearType = gearType;
		this.door = door;
	}
}
