package cn.he.practice.common;

import java.util.List;

/**
 * 分页实体类
 * @author 仁杰
 * 2017年3月27日10:51:14
 */
public class PageBean<T> {
	
	private int currentPage;	//当前页
	private int totalRecord;	//总记录数
	private int pageSize;		//每页记录数
	private List<T> beanList;	//每页的数据
	
	private String param;		//附加参数(比如：可以用于分页携带uri地址)

	//计算总页数
	public int getTotalPage() {
		int totalPage = totalRecord / pageSize;
		return totalPage % pageSize == 0 ? totalPage : totalPage + 1;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<T> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<T> beanList) {
		this.beanList = beanList;
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}
	
	
	
}
