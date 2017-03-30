package tube

class Comment {
	
	String message
	User user
	Date dateCreated
	
    static constraints = {
		message blank:false
    }
}
