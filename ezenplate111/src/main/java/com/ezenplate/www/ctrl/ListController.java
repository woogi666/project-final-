package com.ezenplate.www.ctrl;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezenplate.www.domain.ListDTO;
import com.ezenplate.www.domain.MemberDTO;
import com.ezenplate.www.domain.MemberVO;
import com.ezenplate.www.domain.PagingVO;
import com.ezenplate.www.repository.ReviewDAO;
import com.ezenplate.www.service.MemberService;
import com.ezenplate.www.service.ReviewService;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/list/*")
public class ListController {
	
	@Inject
	private ReviewService rsv;
	@Inject
	private MemberService msv;
	 
	@GetMapping("/review")
	public void list(Model model) {
		MemberDTO mdto = new MemberDTO();
		
		model.addAttribute("list",rsv.getReviewList());
		model.addAttribute("profile",msv.getList());
		model.addAttribute("getphoto",msv.modify(mdto));
		
		
		
		
		
	}
}
