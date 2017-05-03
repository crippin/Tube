package tube

class Playlist {
	
	String title
	float length
	Person Person
	
	static hasMany = [video: Video]
	
	static belongsTo = Person
	
	Playlist(String title,Person person, float length){
		this.title = title
		this.person = person
		this.length = length
	}
	
    static constraints = {
    }
}
