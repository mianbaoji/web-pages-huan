package com.bit.common;

public class news_table {
	private String news_head;//消息标题
	private String news_time;//发布时间
	private String news_content;//消息内容
	private String news_pub;//发布人ID
	private String news_sub;//接收人ID
	private String news_status;//消息状态（已查看/未查看）
	public String getNews_head() {
		return news_head;
	}
	public void setNews_head(String news_head) {
		this.news_head = news_head;
	}
	public String getNews_time() {
		return news_time;
	}
	public void setNews_time(String news_time) {
		this.news_time = news_time;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public String getNews_pub() {
		return news_pub;
	}
	public void setNews_pub(String news_pub) {
		this.news_pub = news_pub;
	}
	public String getNews_sub() {
		return news_sub;
	}
	public void setNews_sub(String news_sub) {
		this.news_sub = news_sub;
	}
	public String getNews_status() {
		return news_status;
	}
	public void setNews_status(String news_status) {
		this.news_status = news_status;
	}
	
}
