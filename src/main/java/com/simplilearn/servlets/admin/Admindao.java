package com.simplilearn.servlets.admin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.simplilearn.tables.*;
import com.simplilearn.util.HibernateUtil;

public class Admindao {	

		/*public static boolean register(Admin u) throws ClassNotFoundException, SQLException {
			Connection conn = ConnectionUtility.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into user(name,email,password) values(?,?,aes_encrypt(?,'k1'))");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			int val = ps.executeUpdate();
			if (val != 0) {
				return true;
			}
			return false;
		}*/

		@SuppressWarnings("unchecked")
		public static boolean verifyUserPwd(String email, String password) throws ClassNotFoundException, SQLException {
			
			SessionFactory sFactory = HibernateUtil.buildSessionFactory();
			Session session = sFactory.openSession();
			session.beginTransaction();
	        String hql = "Select password From admin A where A.email = :Aemail";
	        Query query = session.createQuery(hql);
	        query.setParameter("Aemail", email);
	        List<Admin> AdminList = query.list();
	        System.out.println(AdminList.toString());
	        
			String dbPwd = "";
			while (((ResultSet) AdminList).next()) {
				dbPwd += ((ResultSet) AdminList).getString(1);
			}
			//System.out.println("db" + dbPwd);
			if(dbPwd.equals(password)){
				return true;
			}
			return false;
		}
		
		public static Admin getUserByName(String name) throws ClassNotFoundException, SQLException {
			SessionFactory sFactory = HibernateUtil.buildSessionFactory();
			Session session = sFactory.openSession();
			session.beginTransaction();
			String hql = "FROM user where name=:Aname";
			Query query = session.createQuery(hql);
	        query.setParameter("Aname", name);
	        List<Admin> AdminList = query.list();
			Admin user = null;
			while (((ResultSet) AdminList).next()) {
				user = new Admin();
				user.setId(((ResultSet) AdminList).getInt(1));
				user.setFirstName(((ResultSet) AdminList).getString(2));
				user.setEmail(((ResultSet) AdminList).getString(3));
			}
			return user;
			
		}
		
		public static Admin getUsernameByEmail(String email) throws ClassNotFoundException, SQLException {
			SessionFactory sFactory = HibernateUtil.buildSessionFactory();
			Session session = sFactory.openSession();
			session.beginTransaction();
			String hql =("From user where email=Amail");
			Query query = session.createQuery(hql);
	        query.setParameter("Amail", email);
	        List<Admin> AdminList = query.list();
			Admin user = null;
			while (((ResultSet) AdminList).next()) {
				user = new Admin();
				user.setId(((ResultSet) AdminList).getInt(1));
				user.setFirstName(((ResultSet) AdminList).getString(2));
				user.setEmail(((ResultSet) AdminList).getString(3));
			}
			return user;
			
		}
		
		/*public static User getUsernameByEmail(String email) throws ClassNotFoundException, SQLException {
			Connection c = ConnectionUtility.getConnection();
			PreparedStatement ps = c.prepareStatement("select * from user where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			User user = null;
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
			}
			return user;
			
		}
		
		public static User getUserByName(String name) throws ClassNotFoundException, SQLException {
			Connection c = ConnectionUtility.getConnection();
			PreparedStatement ps = c.prepareStatement("select * from user where name=?");
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			User user = null;
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
			}
			return user;
			
		}

		public static boolean checkUserExistsOrNot(String email) throws ClassNotFoundException, SQLException {
			Connection c = ConnectionUtility.getConnection();
			PreparedStatement ps = c.prepareStatement("select * from user where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return true;
			}
			return false;
		}*/
	}
