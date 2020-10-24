package com.Woori.Dto;

public class BandListDto {
	private int id;
	private int categoryId;
	private String name;
	private String introduction;
	private String location;
	private int capacity;
	private int currentMember;
	private String categoryName;
	private String createBy;

	public BandListDto() {
	}

	// 밴드 생성용 생성자
	public BandListDto(int categoryId, String name, String introduction, String location, int capacity, String createBy) {
		this.categoryId = categoryId;
		this.name = name;
		this.introduction = introduction;
		this.location = location;
		this.capacity = capacity;
		this.createBy=createBy;
	}

	// 밴드 리스트용 생성자
	public BandListDto(int id, String name, String introduction, String location, int capacity, int currentMember,
			String categoryName) {
		this.id = id;
		this.name = name;
		this.introduction = introduction;
		this.location = location;
		this.capacity = capacity;
		this.currentMember = currentMember;
		this.categoryName = categoryName;
	}

	// 밴드 인원을 구하기위한 생성자
	public BandListDto(int currentMember) {
		this.currentMember = currentMember;
	}

	/*
	 * // 왜만들었는지 모르겠음 어디 쓰려고하는데가 있을꺼임
	 * public BandListDto(int id, String name, String
	 * introduction, String location, int capacity, String categoryName) { this.id =
	 * id; this.name = name; this.introduction = introduction; this.location =
	 * location; this.capacity = capacity; this.categoryName = categoryName; }
	 */

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public int getCurrentMember() {
		return currentMember;
	}

	public void setCurrentMember(int currentMember) {
		this.currentMember = currentMember;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

}
