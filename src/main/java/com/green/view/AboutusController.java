package com.green.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AboutusController {
	
	// header.jsp에서 aboutus로 받기(단일 페이지)
	// About us 페이지 호출용 --- 다른 기능 없음
	@GetMapping(value="/aboutus")
	public String aboutus() { // TODO: Model 넣어야 됨.
		
		return "aboutus/aboutus";
	}
}