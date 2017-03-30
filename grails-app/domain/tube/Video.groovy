package tube

class Video {
	
	String title
	User user
	String filename
	int lenght 
	String description
	Date uploadDate
	String category
	
	static hasMany = [comment: Comment]
	
	
    static constraints = {
    }
}
