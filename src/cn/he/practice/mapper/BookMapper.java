package cn.he.practice.mapper;


import java.util.List;

import cn.he.practice.entity.Book;

public interface BookMapper {
	
	
	/**
	 * 查询所有图书
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<Book> findAll(int currentPage, int pageSize);
	
	/**
	 * 分类查询图书列表
	 * @return
	 */
	public List<Book> findList(int currentPage, int pageSize, String book_type_id);
	
	/**
	 * 查询图书详情
	 * @param id
	 * @return
	 */
	public Book findBookById(String id);

	/**
	 * 查询图书总数
	 * @return
	 */
	public Integer findCount();
	
	/**
	 * 修改图书信息
	 * @param book
	 * @param id
	 */
	public void updateBook(Book book);
	
}
