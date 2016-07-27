package com.niit.ShoppingCart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Test {
	public static void main(String[]args)
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		//context.getBean("category");

		product p= (product) context.getBean("viewobject");
		p.setId("101");
		p.setName("mobile");
		p.setPrice(50000);
		System.out.println(p.getId());
		System.out.println(p.getName());
		System.out.println(p.getPrice());
		System.out.println("successfully created");
		
		System.out.println("Category is created");
	}
	

}
