package tube

class Playlist {
	
	String title
	int length
	Person Person
	
	static hasMany = [video: Video]
	
	static belongsTo = Person
	
    static constraints = {
    }
}
