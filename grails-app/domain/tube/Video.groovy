package tube

import org.springframework.aop.aspectj.RuntimeTestWalker.ThisInstanceOfResidueTestVisitor;

class Video {

	String title
	Person person
	String filename
	int lenght = 0
	String description
	Date uploadDate 
	String category
	
	
	Video(String title, Person uploader, String filename, String category, String description){
		this()
		//this.person = uploader
		
		this.person = uploader
		uploadDate = new Date(System.currentTimeMillis())
		this.title = title
		this.filename = filename
		this.category = category
		this.description = description
	}
	
	static hasMany = [comment: Message, playlist: Playlist]
	
	static belongsTo = [Person, Playlist]
	
    static constraints = {
    }
}