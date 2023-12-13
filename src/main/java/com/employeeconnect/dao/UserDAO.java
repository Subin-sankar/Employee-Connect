package com.employeeconnect.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.employeeconnect.beans.UserBean;

public class UserDAO {
	static Connection con = null;
	static PreparedStatement pst = null;
	static ResultSet rs = null;
	
	
	// --------------START------get connection---------------
	public static Connection getDbConnection() throws SQLException {
		try {
			DBDAO.connect();
			con = DBDAO.getDbCon();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	//------------------END-------------database connection--------

	
	// --------------START------check login---------------
	public static String checkLogin( UserBean userBean) throws SQLException {
		con=getDbConnection();
		String userType=null;
		try {
			
			pst = con.prepareStatement("select user_type from login_details where user_name=? and password=?");
			pst.setString(1, userBean.getUserName());
			pst.setString(2, userBean.getPassWord());
			
			rs=pst.executeQuery();
			while(rs.next()) {
				userType= rs.getString(1);
			}
			
			
		} catch (Exception sql) {
			sql.printStackTrace();
		}
		return userType;
	}
	
}
