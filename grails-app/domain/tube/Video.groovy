package tube

class Video {
	
	String title
	Person person
	String filename
	int lenght 
	String description
	Date uploadDate
	String category
	
	static hasMany = [comment: Message, playlist: Playlist]
	
	static belongsTo = [Person, Playlist]
	
    static constraints = {
    }
}