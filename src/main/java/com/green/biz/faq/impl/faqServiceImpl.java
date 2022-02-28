package com.green.biz.faq.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.FaqDAO;
import com.green.biz.dto.FaqVO;
import com.green.biz.faq.FaqService;

@Service("faqService")
public class faqServiceImpl implements FaqService {

	@Autowired
	private FaqDAO faqDao;
	
	@Override
	public List<FaqVO> listFaq() {
		
		return faqDao.listFaq();
	}
}

