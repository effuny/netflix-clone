package com.care.netflix.contents.vo;

/*
 * SQL> CREATE TABLE wishlike(
  2  content_id varchar2(200),
  3  content_title varchar2(200),
  4  email varchar2(200),
  5  row_num number,
  6  wish varchar2(200),
  7  prefer varchar2(200),
  8  dislike varchar2(200),
  9  wish_date varchar2(200),
 10  like_date varchar2(200),
 11  dislike_date varchar2(200)
 12  );

Table created.

SQL> commit;

Commit complete.
 */

public class WishAndLikeVO {
	private String content_id;
	private String content_title;
	private String email;
	private String wish;
	private String prefer;
	private String dislike;
	private String wish_date;
	private String like_date;
	private String dislike_date;
	
	
	public WishAndLikeVO() {
		
	}
	
	public WishAndLikeVO(String content_id, String content_title, String email, String wish,
			String prefer, String dislike, String wish_date, String like_date, String dislike_date) {
		super();
		this.content_id = content_id;
		this.content_title = content_title;
		this.email = email;
		this.wish = wish;
		this.prefer = prefer;
		this.dislike = dislike;
		this.wish_date = wish_date;
		this.like_date = like_date;
		this.dislike_date = dislike_date;
	}

	public String getContent_id() {
		return content_id;
	}

	public void setContent_id(String content_id) {
		this.content_id = content_id;
	}

	public String getContent_title() {
		return content_title;
	}

	public void setContent_title(String content_title) {
		this.content_title = content_title;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getWish() {
		return wish;
	}

	public void setWish(String wish) {
		this.wish = wish;
	}

	public String getPrefer() {
		return prefer;
	}

	public void setPrefer(String prefer) {
		this.prefer = prefer;
	}

	public String getDislike() {
		return dislike;
	}

	public void setDislike(String dislike) {
		this.dislike = dislike;
	}

	public String getWish_date() {
		return wish_date;
	}

	public void setWish_date(String wish_date) {
		this.wish_date = wish_date;
	}

	public String getLike_date() {
		return like_date;
	}

	public void setLike_date(String like_date) {
		this.like_date = like_date;
	}

	public String getDislike_date() {
		return dislike_date;
	}

	public void setDislike_date(String dislike_date) {
		this.dislike_date = dislike_date;
	}
	
	@Override
	public String toString() {
		return "WishAndLikeVO [content_id=" + content_id + ", content_title=" + content_title + ", email=" + email
				+ ", wish=" + wish + ", prefer=" + prefer + ", dislike=" + dislike + ", wish_date="
				+ wish_date + ", like_date=" + like_date + ", dislike_date=" + dislike_date + "]";
	}

	
}