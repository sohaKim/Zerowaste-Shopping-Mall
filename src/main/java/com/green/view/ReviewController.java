package com.green.view;


import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.biz.dto.ReviewVO;
//import com.green.biz.review.ReviewService;


//@Controller
//public class ReviewController {
//	 
//	
//	@ResponseBody
//    @RequestMapping(value = "/reviews", method = RequestMethod.POST)
//    public String create(@ModelAttribute Review review) {
//        System.out.println(review);
//        return review.toString();
//    }
//}