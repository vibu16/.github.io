package com.cognizant.truyum.dao;

import java.text.ParseException;
import java.util.*;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImplTest {

	public static void main(String[] args) {
		try {
			System.out.println("*********Admin List*******");
			testGetMenuItemListAdmin();
			System.out.println("*********Customer List*******");
			testGetMenuItemListCustomer();
			testModifyMenuItem();
			System.out.println("*********Modified List*******");
			testGetMenuItemListAdmin();
		} catch (ParseException e) {
			System.out.println(e);
		}
	}

	public static void testGetMenuItemListAdmin() throws ParseException {
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		List<MenuItem> menuItemList = menuItemDao.getMenuItemListAdmin();
		for (MenuItem x : menuItemList) {
			System.out.println(x);
		}
	}

	public static void testGetMenuItemListCustomer() throws ParseException {
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		List<MenuItem> customerList = menuItemDao.getMenuItemListCustomer();
		for (MenuItem x : customerList) {
			System.out.println(x);
		}
	}

	private static void testModifyMenuItem() throws ParseException {

		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		MenuItem menuItem = new MenuItem(1, "Noodles", 50.0f, false, DateUtil.convertToDate("17/08/2019"), "Special",
				false);
		menuItemDao.modifyMenuItem(menuItem);

	}
}
