package com.trips.service.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trips.domain.qna.AnswerDto;
import com.trips.mapper.qna.AnswerMapper;

@Service
public class AnswerService {

	@Autowired
	private AnswerMapper mapper;
	
	public int addAnswer(AnswerDto answer) {
		// TODO Auto-generated method stub
		
		return mapper.insert(answer);
	}

	public List<AnswerDto> listAnswerByAnswerId(int qnaId) {
		// TODO Auto-generated method stub
		return mapper.selectAnswerByqnaId(qnaId);
	}

	

}
