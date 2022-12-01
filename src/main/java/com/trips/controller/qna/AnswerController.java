package com.trips.controller.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trips.domain.qna.AnswerDto;
import com.trips.service.qna.AnswerService;

@Controller
@RequestMapping("answer")
public class AnswerController {
	
	@Autowired
	private AnswerService service;
	
	@PostMapping("add")
	@ResponseBody
	public Map<String,Object> add(@RequestBody AnswerDto answer) {
		Map<String,Object> map = new HashMap<>();
	
		int cnt = service.addAnswer(answer);
		if(cnt ==1) {
			map.put("message", "답변이 등록되었습니다");
		}else {
			map.put("message","답변이 등록되지 않았습니다");
		}
		
		return map;
	}
	// 댓글 보여주기
	@GetMapping("QnaList/{qnaId}")
	@ResponseBody
	public List<AnswerDto> list(@PathVariable int qnaId){
		System.out.println("controloer qna : " + qnaId);
		return service.listAnswerByAnswerId(qnaId);
	}
	
}
