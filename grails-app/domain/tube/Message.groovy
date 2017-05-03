package tube

class Message {
	
	String message
	Person person
	Date dateCreated
	Video video
	
	static belongsTo = Video
	
	Message(String message, Person person, Video video ){
		this()
		this.message = message
		this.person = person
		this.video = video
		this.dateCreated = new Date(System.currentTimeMillis())
	}
    static constraints = {
		message blank:false
    }
}