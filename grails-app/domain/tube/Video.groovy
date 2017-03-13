package tube

class Video {
	
	String title
	User author
	String filename
	Date uploadDate
	
	static hasMany = [comment: Comment]
	
	
    static constraints = {
    }
}
