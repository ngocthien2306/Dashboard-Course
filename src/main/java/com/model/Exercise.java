package com.model;

public class Exercise {
	public int id;
	public String header;
	public String title;
	public String description;
	public String comment;
	public double score;
	public String linkcode;
	public String linkfolder;
	public String click;


	public String getLinkcode() {
		return linkcode;
	}

	public void setLinkcode(String linkcode) {
		this.linkcode = linkcode;
	}

	public String getLinkfolder() {
		return linkfolder;
	}

	public void setLinkfolder(String linkfolder) {
		this.linkfolder = linkfolder;
	}

	public String getClick() {
		return click;
	}

	public void setClick(String click) {
		this.click = click;
	}
	public Exercise(int id, String header, String title, String description, String comment, double score,
			String linkcode, String linkfolder, String click) {
		super();
		this.id = id;
		this.header = header;
		this.title = title;
		this.description = description;
		this.comment = comment;
		this.score = score;
		this.linkcode = linkcode;
		this.linkfolder = linkfolder;
		this.click = click;
	}

	public Exercise(int id, String header, String title, String description, String comment, double score) {
		super();
		this.id = id;
		this.header = header;
		this.title = title;
		this.description = description;
		this.comment = comment;
		this.score = score;
	}
	
	public Exercise(String header, String title, String description, String comment, double score) {
		super();
		this.header = header;
		this.title = title;
		this.description = description;
		this.comment = comment;
		this.score = score;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
}
