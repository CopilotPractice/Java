
public class DvdPlayer {

	protected int trackNum;
	
	public void play() {
		
	}
	
	public void stop(){
		
	}
	
	public void beforeTrack(){
		trackNum--;
	}
	public void nextTrack(){
		trackNum++;
	}
	public void reset(){
		trackNum = 1;
	}
	public int getTrackNum(){
		return trackNum;
	}
	public void setTrackNum(int trackNum){
		this.trackNum = trackNum;
	}

}
