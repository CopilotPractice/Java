
public interface IDvdPlayer {
	void play();
	void stop();
	void beforeTrack();
	void nextTrack();
	void reset();
	
	int getTrackNum();
	void setTrackNum(int trackNum);
}
