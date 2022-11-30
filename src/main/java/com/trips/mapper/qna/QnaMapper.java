package com.trips.mapper.qna;


import java.util.List;

import com.trips.domain.qna.QnaDto;

public interface QnaMapper {

	int insert(QnaDto qna);

	List<QnaDto> list();

	QnaDto select(int id);


	
//	int insertFile(int id, String Filename);


	

}
