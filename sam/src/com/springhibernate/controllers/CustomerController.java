package com.springhibernate.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springhibernate.dao.Customerdao;
//import com.springhibernate.dao.CustomerdaoImp;
import com.springhibernate.entity.CustomersTable;

@Controller
@RequestMapping("/base")
public class CustomerController {

	@Autowired
	private Customerdao customerdao;

	@RequestMapping("/list")
	public String listcustomers(Model model) {

		List<CustomersTable> theCustomers = customerdao.getcustomers();

		model.addAttribute("customers", theCustomers);

		return "list-customers";

	}

}
