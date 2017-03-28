package cn.he.practice.service;

import java.util.List;

import cn.he.practice.entity.Book;

/**
 * 图书Service接口
 * @author 仁杰
 *
 */
public interface BookService {
	
	/**
	 * 查询所有图书
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<Book> findAll(int currentPage, int pageSize);
	
	/**
	 * 分类查询图书list
	 * @return
	 */
	public List<Book> findList(int currentPage, int pageSize,String book_type_id);
	
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
	 * 修改图书
	 * @param book
	 * @param string
	 */
	public void updateBook(Book book);
	
}
