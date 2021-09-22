package com.onlinebank;

import java.sql.*;
import java.util.*;

public class BankCommons {
	
	public static Connection prepareConn() {
		Connection c=null;
		try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	c = DriverManager.getConnection("jdbc:mysql://db:3306/bank","root","test");
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return c;
	}//prepareConn
	
	public static void closeConn(Connection c){
		try {
			if(c!=null)
				c.close();    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
	}//closeConn
	
	public static int update(String sql) {
		int update = 0;
		Connection c=null;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			update = st.executeUpdate(sql);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return update;
	}
	
	public static boolean checkUser(String sql) {
		boolean check = false;
		Connection c=null;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next() == true){
				check = true;
			}else {
				check = false;
			}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return check;
	}
	
	public static ArrayList getAccountNoByName(String sql) {
		ArrayList a = new ArrayList();
		Connection c=null;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				a.add(rs.getInt(1)+"");
			}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return a;
	}

	//------------
	
	public static String getNameByNo(String sql) {
		String name = "";
		Connection c=null;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				name = rs.getString(1);
			}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return name;
	}
	
	//--------------------------	
	public static ArrayList getAccountByName(String sql) {
		ArrayList a = new ArrayList();
		Connection c=null;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				ArrayList o = new ArrayList();
				o.add(rs.getInt(1)+"");
				o.add(rs.getString(2));
				a.add(o);
			}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return a;
	}
	
	public static ArrayList getAccountDetailsByName(String sql) {
		ArrayList a = new ArrayList();
		Connection c=null;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				ArrayList o = new ArrayList();
				o.add(rs.getInt(1)+"");
				o.add(rs.getString(2));
				o.add(rs.getInt(3)+"");
				o.add(rs.getInt(4)+"");
				o.add(rs.getString(5));
				a.add(o);
			}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return a;
	}
	
	public static int getBalance(String sql) {
		Connection c=null;
		int balance=0;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				balance = rs.getInt(1);
			}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return balance;
	}
	
//	public static void main (String[] args) {
//		String sql="select ac.acc_no, max(tx.balance) from tx_details tx, acc_details ac where ac.uname = tx.uname  and tx.uname='tousif'";
//		ArrayList a = getBalanceByName(sql);
//		System.out.println (a);
//	}
}
