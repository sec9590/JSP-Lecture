package json;

public class BookDTO {
	private String name;
	private String writer;
	private int price;
	private String genre;
	private String publisher;
	
	public BookDTO(String name, String writer, int price, String genre, String publisher) {
		super();
		this.name = name;
		this.writer = writer;
		this.price = price;
		this.genre = genre;
		this.publisher = publisher;
	}

	

	public BookDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	@Override
	public String toString() {
		return "BookDTO [name=" + name + ", writer=" + writer + ", price=" + price + ", genre=" + genre + ", publisher="
				+ publisher + "]";
	}
	
}
