package tube

class Playlist {
	
	String title
	int length
	User user
	
	static hasMany = [video: Video]
	
    static constraints = {
    }
}
