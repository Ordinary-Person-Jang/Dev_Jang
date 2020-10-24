package com.Woori.Dto;

public class BoardDto {
	int idx;
	String id;
	String title;
	String content;
	String cdate;
	
	public BoardDto(int idx,String id, String title, String content, String cdate) {
		this.idx=idx;
		this.id=id;
		this.title=title;
		this.content=content;
		this.cdate=cdate;
	}
	
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public String getCdate() {
		return cdate;
	}

	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	
}
