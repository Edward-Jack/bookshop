package cn.he.practice.web.handle;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.he.practice.common.PageBean;
import cn.he.practice.entity.Book;
import cn.he.practice.mapper.BookMapper;
import cn.he.practice.service.BookService;

@Controller
@RequestMapping("/book")
public class BookHandle {

	@Autowired
	private BookService bookService;	//注入Service
	
	PageBean<Book> pageBean = new PageBean<Book>();
	
	@Autowired
	private HttpServletRequest request;
	
	/**
	 * 查询所有图书
	 * @param model
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	@RequestMapping("/findAll")
	public String findAll(Model model,@RequestParam(value = "currentPage",defaultValue="1") Integer currentPage,
			@RequestParam(value = "pageSize",defaultValue="6") Integer pageSize){
		List<Book> books = bookService.findAll(currentPage,pageSize);	//查询图书列表
		Integer total = bookService.findCount();	//查询图书总数
		
		pageBean.setCurrentPage(currentPage);
		pageBean.setPageSize(pageSize);
		pageBean.setTotalRecord(total);
		pageBean.setBeanList(books);
		
		model.addAttribute("pageBean", pageBean);
		return "/book/list";
	}
	
	/**
	 * 分类查询图书列表
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String findList(Model model,@RequestParam(value = "currentPage",defaultValue="1") Integer currentPage,
					@RequestParam(value = "pageSize",defaultValue="6") Integer pageSize){
		String book_type_id = request.getParameter("book_type_id");	//获取图书类型id
		if(StringUtils.isNotBlank(book_type_id)){
			List<Book> books = bookService.findList(currentPage,pageSize,book_type_id);	//查询图书列表
			Integer total = bookService.findCount();	//查询图书总数
			
			pageBean.setCurrentPage(currentPage);
			pageBean.setPageSize(pageSize);
			pageBean.setTotalRecord(total);
			pageBean.setBeanList(books);
			
			model.addAttribute("pageBean", pageBean);
		}else{
			model.addAttribute("message", "非常抱歉！数据异常,请刷新重试。");
		}
		return "/book/list";
	}
	
	/**
	 * 查询图片详情
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping("/detail")
	public String findDetail(Model model,String id){
		if(StringUtils.isNotBlank(id)){
			Book book = bookService.findBookById(id);
			model.addAttribute("book", book);
			return "/book/detail";
		}
		model.addAttribute("message", "数据异常,请刷新！");
		return "/book/list";
	}
	
	
	@RequestMapping("/update")
	public void Test(){
		Book book = new Book();
		book.setName("测试");
		book.setCount(150);
		book.setPrice("10.50");
		book.setId("1");
		bookService.updateBook(book);
	}
}
