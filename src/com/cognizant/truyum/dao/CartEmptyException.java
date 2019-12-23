package com.cognizant.truyum.dao;

public class CartEmptyException extends Exception {

	public CartEmptyException() {
		super("Cart List is Empty");
	}

	public CartEmptyException(String message) {
		super("Cart List is Empty");
	}

}
