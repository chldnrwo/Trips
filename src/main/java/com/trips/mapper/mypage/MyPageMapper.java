package com.trips.mapper.mypage;

import java.util.List;

import com.trips.domain.mypage.ChatDto;
import com.trips.domain.mypage.ChatLeftDto;
import com.trips.domain.mypage.HostChatIntroDto;
import com.trips.domain.mypage.ImgDto;
import com.trips.domain.mypage.MemberDto;
import com.trips.domain.mypage.Res1Dto;
import com.trips.domain.mypage.Res2Dto;

public interface MyPageMapper {

	MemberDto select(String id);

	int update(String id, String password);

	int updateByName(String id, String name);

	int updateByPhone(String id, String phone);

	int updateByEmail(String id, String email);

	int updateByGender(String id, String gender);

	int updateByHost(String id, Boolean host);

	List<Res1Dto> getRes1ById(String id);

	Res2Dto getByResNo(int resNo);

	int getCountByBD(int boardNo, String date);

	List<ChatDto> getChat(int chatRoom);

	int insertChat(String id, int chatRoom, String content);

	List<ChatLeftDto> getChatLeft(String id);

	int remove(String id);

	String getEmailById(String id);

	MemberDto getByEmail(String email);

	List<ImgDto> getImgByResNo(int resNo);

	List<HostChatIntroDto> getUserListById(String id);

	List<ChatLeftDto> getChatLeft2(String id);

	List<Integer> getPerson(int boardNo, String date);

	int insertDB(String id, String originalFilename);

}
