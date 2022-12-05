package com.trips.controller.yds;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.trips.domain.yds.TripsBoardDto;
import com.trips.service.ydsBoardService.ydsBoardService;

@Controller
@RequestMapping("ydsBoard")
@ComponentScan(basePackages = "com.trips.mapper.ydsBoardMapper.ydsBoardMapper")
public class YdsBoardController {
	
	
	 @Autowired 
	 private ydsBoardService service;
	 
	
	@GetMapping("list")
	public void getBoardlist(Model model) {
		List<TripsBoardDto> list = service.getBoardlist();
		model.addAttribute("boardList", list);
	}
	
	@GetMapping("get")
	public void getBoard(int num, Model model) {
		TripsBoardDto board = service.getBoard(num);
		model.addAttribute("board", board);
		
	}
	
	@GetMapping("remove")
	public String removeBoard(int num) {
		service.removeBoard(num);
		return "redirect:/ydsBoard/list";
	}
	
	@GetMapping("getFiveFiles")
	@ResponseBody
	public List<TripsBoardDto> getFiveFiles(){
		return service.getFiveFiles();
	}
	
}