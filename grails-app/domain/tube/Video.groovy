package tube

import org.springframework.aop.aspectj.RuntimeTestWalker.ThisInstanceOfResidueTestVisitor;

class Video {

	String title
	Person person
	String filename
	float lenght
	String description
	Date uploadDate 
	String category
	
	
	Video(String title, Person uploader, String filename, String category, String description, String duration){
		this()
		//this.person = uploader
		
		this.person = uploader
		uploadDate = new Date(System.currentTimeMillis())
		this.title = title
		this.filename = filename
		this.category = category
		this.description = description
		this.lenght = Float.parseFloat(duration)
	
	}
	
	static hasMany = [comment: Message, playlist: Playlist]
	
	static belongsTo = [Person, Playlist]
	
    static constraints = {
    }
}