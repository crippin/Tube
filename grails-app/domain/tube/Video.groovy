package tube

class Video {
	
	String title
	User author
	String filename
	int lenght 
	String description
	Date uploadDate
	
	static hasMany = [comment: Comment]
	
	
    static constraints = {
    }
}
