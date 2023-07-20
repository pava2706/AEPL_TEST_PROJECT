package aepl_test.controller;

import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import aelp_test.dao.Aelp_Test_Dao;
import aepl_test.dto.Aepl_User_Registartion;

@Controller
public class Aepl_Test_Controller {

	@RequestMapping("/user")
	public ModelAndView insert(@ModelAttribute Aepl_User_Registartion registartion, Aelp_Test_Dao dao) {
		registartion.setSubmissionDate(LocalDate.now());
		String msg = dao.insert(registartion, registartion.getEmail());

		ModelAndView andView = new ModelAndView("userregistration.jsp");

		andView.addObject("msg", msg);
		return andView;
	}
}
