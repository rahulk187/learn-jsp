package com.learnjsp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/basic")
	private void basic(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/basic.jsp");
		requestDispatcher.forward(request, response);
	}
	
}
