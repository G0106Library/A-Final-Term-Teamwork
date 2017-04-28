package vo.BE;

public class voBook {
	private String bookISBN;
	private String bookName;
	private String publishName;
	private String primaryClassName;
	private String minorClassName;
	private float bookPrice;
	private String publishDate;
	private String keyword;
//	private String[] authorName;
	
	public String getBookISBN() {
		return bookISBN;
	}
	public void setBookISBN(String bookISBN) {
		this.bookISBN = bookISBN;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getPublishName() {
		return publishName;
	}
	public void setPublishName(String publishName) {
		this.publishName = publishName;
	}
	public String getPrimaryClassName() {
		return primaryClassName;
	}
	public void setPrimaryClassName(String primaryClassName) {
		this.primaryClassName = primaryClassName;
	}
	public String getMinorClassName() {
		return minorClassName;
	}
	public void setMinorClassName(String minorClassName) {
		this.minorClassName = minorClassName;
	}
	public float getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(float bookPrice) {
		this.bookPrice = bookPrice;
	}
	public String getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
//	public String[] getAuthorName() {
//		return authorName;
//	}
//	public void setAuthorName(String[] authorName) {
//		this.authorName = authorName;
//	}
	
}
