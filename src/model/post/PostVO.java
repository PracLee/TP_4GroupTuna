package model.post;

import java.sql.Date;

public class PostVO {
	private int pnum;
	private int views;
	private int plike;
	private String category;
	private String title;
	private String content;
	private Date pdate;
	private String p_user;
	
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public int getPlike() {
		return plike;
	}
	public void setPlike(int plike) {
		this.plike = plike;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public String getP_user() {
		return p_user;
	}
	public void setP_user(String p_user) {
		this.p_user = p_user;
	}
	@Override
	public String toString() {
		return "PostVO [pnum=" + pnum + ", views=" + views + ", plike=" + plike + ", category=" + category + ", title="
				+ title + ", content=" + content + ", pdate=" + pdate + ", p_user=" + p_user + "]";
	}
	
	
	
	
}