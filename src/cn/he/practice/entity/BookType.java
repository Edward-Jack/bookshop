package cn.he.practice.entity;

import java.util.List;

/**
 * 图书分类
 * @author 仁杰
 * 2017年3月27日16:32:04
 */
public class BookType {
	
	private String id;			//主键id
	private String name;		//分类名称
	private List<Book> books;	//图书集合
	
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
	public List<Book> getBooks() {
		return books;
	}
	public void setBooks(List<Book> books) {
		this.books = books;
	}
	
	
}
