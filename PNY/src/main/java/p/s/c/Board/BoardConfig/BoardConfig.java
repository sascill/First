package p.s.c.Board.BoardConfig;

public class BoardConfig {
	private int pageNum; //현재 페이지 번호
	private int countPerPage; //페이지당 보여줄 갯수
	private String searchKeyword; //검색어
	private String searchType; //검색유형
	private boolean checkMain;

	public boolean getCheckMain() {
		return checkMain;
	}

	public void setCheckMain(boolean checkMain) {
		this.checkMain = checkMain;
	}

	public BoardConfig() {
		//게시판 초기 진입시 설정
		this.pageNum = 1;
		this.countPerPage = 10;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		if(pageNum <= 0) {
			this.pageNum = 1;
		}
		this.pageNum = pageNum;
	}

	public int getCountPerPage() {
		return countPerPage;
	}

	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}
	
	public int getPageStart() {
		return (pageNum - 1) * countPerPage + 1;
	}
	
	public int getPageEnd() {
		return countPerPage * pageNum;
	}
	
	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	
}
