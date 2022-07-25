package com.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrintTable extends TagSupport {

	private static final long serialVersionUID = 1L;
	// property
	private int number;

	// setter
	public void setNumber(int number) {
		this.number = number;
	}

	// property
	private String color;

	// setter
	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public int doStartTag() throws JspException {

		JspWriter out = pageContext.getOut();

		try {
			out.println("<div style='color:" + color + "'");
			out.print("<br>");
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		for (int i = 1; i <= 10; i++) {
			try {
				out.print((i * number) + "<br>");
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
		try {
			out.println("</div>");
		} catch (IOException e) {
			e.printStackTrace();
		}

		return SKIP_BODY;
	}

}
