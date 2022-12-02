package com.trips.controller.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.trips.domain.qna.AnswerDto;
import com.trips.service.qna.AnswerService;

//@Controller +@ResponseBody
@RestController
@RequestMapping("answer")
public class AnswerController {
	
	@Autowired
	private AnswerService service;
	
	@GetMapping("get/{id}")
	public AnswerDto get(@PathVariable int id) {
		return service.getById(id);
	}
	
	@PutMapping("modify")
	public Map<String,Object> modify(@RequestBody AnswerDto answer){
		Map<String,Object> map= new HashMap<>();
		int cnt = service.modify(answer);
		
		if (cnt==1) {
			map.put("message", "댓글이 수정되었습니다");
		}else {
			map.put("message", "댓글이 수정되지 않았습니다");
		}
		return map;
	}
	
	@DeleteMapping("remove/{id}")
	public Map<String,Object> remove(@PathVariable int id){
		Map <String,Object> map = new HashMap<>();
		
		int cnt = service.removeById(id);
		if(cnt==1) {
			map.put("message", "댓글이 삭제되었습니다");
		}else {
			map.put("message", "댓글이 삭제되지 않았습니다");
		}
		return map;
	}
	
	// 댓글 작성하기
	//@ResponseBody
	@PostMapping("add")
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
