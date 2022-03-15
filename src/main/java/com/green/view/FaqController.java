package com.green.view;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.green.biz.dto.FaqVO;
import com.green.biz.faq.FaqService;


@Controller
public class FaqController {

	@Autowired
	FaqService faqService;
	
	// 모든 faq리스트 조회
	@GetMapping(value="/faq_list")
	public String qnaList(Model model, FaqVO vo) {
		
		List<FaqVO> faqList = faqService.listFaq();
		model.addAttribute("faqList", faqList); // qnaList.jsp의 ${qnaList}
		
		return "faq/faqList"; // jsp
	}
}	
	
