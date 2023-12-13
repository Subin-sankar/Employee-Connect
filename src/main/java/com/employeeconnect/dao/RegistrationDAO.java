package com.employeeconnect.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegistrationDAO {

	static Connection con = null;
	static PreparedStatement pst = null;
	static PreparedStatement pst1=null;
	static ResultSet rs = null;
	static boolean flag = false;

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
	
		//--------------START------insert details-------------------------
		public static boolean insertRegistration(String firstName,String lastName,String email,String contact,String department,String position) throws SQLException{
			con=getDbConnection();
			try {
				
				pst=con.prepareStatement("insert into employee_details(first_name,last_name,email,contact_number,department,position)values(?,?,?,?,?,?)");
				pst1=con.prepareStatement("insert into login_details(user_name,password)values(?,?,)");
				pst.setString(1, firstName);
				pst.setString(2, lastName);
				pst.setString(3,email);
				pst.setString(4, contact);
				pst.setString(5, department);
				pst.setString(6, position);
				
				pst1.setString(1, email);
				pst1.setString(2, contact);
				
				pst.executeUpdate();
				pst1.executeUpdate();
				
				flag=true;
			} catch(SQLException sql) {
				sql.printStackTrace();
			}
			return flag;
		}
		//--------------END------insert details-------------------------
}
