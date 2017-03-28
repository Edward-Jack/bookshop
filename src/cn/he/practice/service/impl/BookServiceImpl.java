package cn.he.practice.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.he.practice.common.PageBean;
import cn.he.practice.entity.Book;
import cn.he.practice.mapper.BookMapper;
import cn.he.practice.service.BookService;

@Transactional	//开始事务注解,用于业务回滚
public class BookServiceImpl implements BookService{

	
	//注入图书mapper接口
	private BookMapper bookMapper;
	public void setBookMapper(BookMapper bookMapper) {
		this.bookMapper = bookMapper;
	}

	
	
	public List<Book> findAll(int currentPage, int pageSize) {
		return bookMapper.findAll(currentPage, pageSize);
	}

	public List<Book> findList(int currentPage, int pageSize, String book_type_id) {
		return bookMapper.findList(currentPage, pageSize,book_type_id);
	}
	
	public Book findBookById(String id) {
		return bookMapper.findBookById(id);
	}

	public Integer findCount() {
		return bookMapper.findCount();
	}


	public void updateBook(Book book) {
		bookMapper.updateBook(book);
	}

	




}
