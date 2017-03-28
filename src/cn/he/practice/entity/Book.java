package cn.he.practice.entity;


/**
 * 图书实体类
 * @author 仁杰
 *
 */
public class Book {
	
	private String id;			//主键id
	private String name;		//图书名称
	private Integer count;		//库存量
	private String price;		//图书价格
	private String image;		//图书图片
	private String description;	//图片描述
	private String auther;		//作者
	private String time;		//上架时间
	
	private BookType bookType;	//图书类型
	
	//订单项对象
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAuther() {
		return auther;
	}
	public void setAuther(String auther) {
		this.auther = auther;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public BookType getBookType() {
		return bookType;
	}
	public void setBookType(BookType bookType) {
		this.bookType = bookType;
	}

	
}
