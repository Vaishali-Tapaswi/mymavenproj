package com.servlets;

import java.io.Serializable;

public class shoppingCartItem implements Serializable
{
	String name;
	String price;

	public void setName(String input)
	{
		name = input;
	}

	public void setPrice(String input)
	{
		price = input;
	}

	public String getPrice()
	{
		return price;
	}

	public String getName()
	{
		return name;
	}

}