package com.trips.mapper.qna;


import java.util.List;

import com.trips.domain.qna.QnaDto;

public interface QnaMapper {

	int insert(QnaDto qna);

	List<QnaDto> list(int offset,int records);

	QnaDto select(int id);

	int update(QnaDto qna);

	int delete(int id);


	
//	int insertFile(int id, String Filename);


	

}
