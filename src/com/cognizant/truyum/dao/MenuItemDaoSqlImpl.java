package com.cognizant.truyum.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.Connection;

import java.sql.PreparedStatement;

import com.cognizant.truyum.model.MenuItem;

public class MenuItemDaoSqlImpl implements MenuItemDao {

	public List<MenuItem> getMenuItemListAdmin() {
		List<MenuItem> menuItemList = new ArrayList<>();
		MenuItem mn;
		try {
			Connection con = ConnectionHandler.getConnection();
			PreparedStatement ps = con.prepareStatement("Select * from menu_item");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				long id = rs.getInt("me_id");
				String name = rs.getString("me_name");
				float price = rs.getFloat("me_price");
				boolean active = false;
				if (rs.getString("me_active").equalsIgnoreCase("YES")) {
					active = true;
				}
				Date dateOfLaunch = rs.getDate("me_date_Of_Launch");
				String category = rs.getString("me_category");
				boolean free_delivery = false;
				if (rs.getString("me_free_delivery").equalsIgnoreCase("YES")) {
					free_delivery = true;
				}
				mn = new MenuItem(id, name, price, active, dateOfLaunch, category, free_delivery);
				menuItemList.add(mn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return menuItemList;
	}

	public List<MenuItem> getMenuItemListCustomer() {
		List<MenuItem> al = new ArrayList<>();
		MenuItem m;
		try {
			Connection con = ConnectionHandler.getConnection();
			String sql = "Select * from menu_item where me_active='yes' and me_date_of_launch <= current_date()";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				long id = rs.getInt("me_id");
				String name = rs.getString("me_name");
				float price = rs.getFloat("me_price");
				boolean active = false;
				if (rs.getString("me_active").equalsIgnoreCase("YES")) {
					active = true;
				}
				Date dateOfLaunch = rs.getDate("me_date_of_launch");
				String category = rs.getString("me_category");
				boolean free_delivery = false;
				if (rs.getString("me_free_delivery").equalsIgnoreCase("YES")) {
					free_delivery = true;
				}
				m = new MenuItem(id, name, price, active, dateOfLaunch, category, free_delivery);
				al.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
	}

	@Override
	public void modifyMenuItem(MenuItem menuItem) {
		Connection con = ConnectionHandler.getConnection();
		try {
			String sql = "update menu_item set me_name=?,me_price=?,me_active=?,me_date_of_launch=?,me_free_delivery=?,me_category=? where me_id=?";
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, menuItem.getName());
			preparedStatement.setFloat(2, menuItem.getPrice());
			if (menuItem.isActive()) {
				preparedStatement.setString(3, "Yes");
			} else {
				preparedStatement.setString(3, "No");
			}
			preparedStatement.setDate(4, new java.sql.Date(menuItem.getDateOfLaunch().getTime()));
			if (menuItem.isFreeDelivery()) {
				preparedStatement.setString(5, "Yes");
			} else {
				preparedStatement.setString(5, "No");
			}
			preparedStatement.setString(6, menuItem.getCategory());
			preparedStatement.setLong(7, menuItem.getId());
			preparedStatement.executeUpdate();
		} catch (SQLException sq) {
			sq.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public MenuItem getMenuItem(long menuItemId) {
		Connection con = ConnectionHandler.getConnection();
		ResultSet resultSet;
		MenuItem menuItem = null;
		if (con != null) {
			try {
				String sql = "select * from menu_item where me_id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setLong(1, menuItemId);
				resultSet = ps.executeQuery();
				boolean activeVg, freeDeliveryVg;
				Date date_of_launch;
				while (resultSet.next()) {
					String name = resultSet.getString(2);
					float price = resultSet.getFloat(3);
					String active = resultSet.getString(4);
					date_of_launch = resultSet.getDate(5);
					String category = resultSet.getString(6);
					String freeDelivery = resultSet.getString(7);
					if (active != null && active.equals("Yes"))
						activeVg = true;
					else
						activeVg = false;
					if (freeDelivery != null && freeDelivery.equals("Yes"))
						freeDeliveryVg = true;
					else
						freeDeliveryVg = false;
					menuItem = new MenuItem(menuItemId, name, price, activeVg, date_of_launch, category,
							freeDeliveryVg);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return menuItem;
	}
}
