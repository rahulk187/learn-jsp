package com.tags;

import java.util.Calendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;


public class MyTagHandler extends TagSupport {

	private static final long serialVersionUID = 1L;

	@Override
	public int doStartTag() throws JspException {  
	    JspWriter out=pageContext.getOut();//returns the instance of JspWriter  
	    try{  
	     out.println(Calendar.getInstance().getTime());//printing date and time using JspWriter
	     out.println("<h1>this is a custom tag..</h1>");
	    }catch(Exception e){System.out.println(e);}  
	    return SKIP_BODY;//will not evaluate the body content of the tag  
	}  
}
