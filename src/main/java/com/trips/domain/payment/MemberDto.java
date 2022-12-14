package com.trips.domain.payment;

import lombok.Data;

@Data
public class MemberDto {
	private String id;
	private String password;
	private String name;
	private String gender;
	private String phone;
	private String email;
	private boolean host;
}
