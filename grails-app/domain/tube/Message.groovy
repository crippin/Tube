package tube

class Message {
	
	String message
	Person person
	Date dateCreated
	
	static belongsTo = Video
	
    static constraints = {
		message blank:false
    }
}