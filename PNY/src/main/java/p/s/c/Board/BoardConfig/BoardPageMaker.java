package p.s.c.Board.BoardConfig;

public class BoardPageMaker {
	private int totalCount; //전체 게시글 개수
	private int displayNum  = 10; //보여줄 페이지 하단 개수
	private int startPageNum; //페이지 하단 블럭 첫 번호
	private int endPageNum; //페이지 하단 블럭 마지막 번호
	private int endNum; //게시판 마지막 번호
	private boolean firstPage; //첫페이지 활성화 여부
	private boolean endPage; //끝페이지 활성화 여부
	private BoardConfig bc; //게시판 설정
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		pageConfig();
	}
	
	public void pageConfig() {
		endNum = totalCount / displayNum;
		if(totalCount % displayNum > 0) {
			endNum++;
		}
		if(bc.getPageNum() < 7) {
			startPageNum = 1;
			if(endNum < 10) {
				endPageNum = endNum;
			} else {
				endPageNum = 10;
			}
		} else {
			if(endNum < 10) {
				startPageNum = 1;
				endPageNum = endNum;
			} else {
				startPageNum = bc.getPageNum() - 5;
				endPageNum = bc.getPageNum() + 4;
				if(endPageNum > endNum) {
					endPageNum = endNum;
				}
			}
		}
		
		firstPage = bc.getPageNum() > 11 ? true : false;
		
	}
	
	public int getDisplayNum() {
		return displayNum;
	}
	public void setDisplayNum(int displayNum) {
		this.displayNum = displayNum;
	}
	public int getStartPageNum() {
		return startPageNum;
	}
	public void setStartPageNum(int startPageNum) {
		this.startPageNum = startPageNum;
	}
	public int getEndPageNum() {
		return endPageNum;
	}
	public void setEndPageNum(int endPageNum) {
		this.endPageNum = endPageNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endPageNum) {
		this.endPageNum = endNum;
	}
	public boolean isFirstPage() {
		return firstPage;
	}
	public void setFristPage(boolean firstPage) {
		this.firstPage = firstPage;
	}
	public boolean isEndPage() {
		return endPage;
	}
	public void setEndPage(boolean endPage) {
		this.endPage = endPage;
	}
	public BoardConfig getBoardconfig() {
		return bc;
	}
	public void setBoardconfig(BoardConfig bc) {
		this.bc = bc;
	}
	
	
	
	
}
