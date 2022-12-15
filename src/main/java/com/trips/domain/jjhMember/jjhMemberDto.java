package com.trips.domain.jjhMember;

import lombok.Data;

@Data
public class jjhMemberDto {

	private String M_ID;
	private String M_PASSWORD;
	private String M_NAME;
	private String M_GENDER;
	private String M_PHONE;
	private String M_EMAIL;
	private Boolean M_HOST;
	private String M_AUTHORITY;
	
	/* session때문에 불러오는 값 추가 - 수민*/
	public jjhMemberDto(String id, String password, String name) {
		this.M_ID = id;
		this.M_PASSWORD = password;
		this.M_NAME = name;
	}
	
}







