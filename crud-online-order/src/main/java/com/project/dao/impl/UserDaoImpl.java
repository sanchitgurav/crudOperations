package com.project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.project.dao.UserDao;
import com.project.dto.UserDTO;
import com.project.utility.DbConnection;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean saveUser(UserDTO user) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DbConnection.establiConnection();
			if (con != null) {
				System.out.println("Connected");
			} else {
				System.out.println("Not Connected");
			}
			ps = con.prepareStatement("insert into tbl_signup(name,email,password,address) values(?,?,?,?)");
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getAddress());
			int rows = ps.executeUpdate();
			if (rows > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null && con != null) {
					ps.close();
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public boolean updateUser(UserDTO user) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DbConnection.establiConnection();
			if (con != null) {
				System.out.println("Connected");
			} else {
				System.out.println("Not Connected");
			}
			ps = con.prepareStatement("update tbl_signup set name=?,password=?,address=? where email=?");
			ps.setString(1, user.getName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getAddress());
			ps.setString(4, user.getEmail());
			int rows = ps.executeUpdate();
			if (rows > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null && con != null) {
					ps.close();
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public boolean deleteUser(String email) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DbConnection.establiConnection();
			ps = con.prepareStatement("delete from tbl_signup where email=?");
			ps.setString(1, email);
			int rows = ps.executeUpdate();
			if (rows > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null && con != null) {
					ps.close();
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public UserDTO searchUser(String email) {
		Connection con = null;
		PreparedStatement ps = null;
		UserDTO user = null;
		try {
			con = DbConnection.establiConnection();
			ps = con.prepareStatement("select * from tbl_signup where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String emailid = rs.getString("email");
				String pass = rs.getString("password");
				String address = rs.getString("city");
				user = new UserDTO(id, name, emailid, pass, address);
			}
			System.out.println("searched data: " + user + " in dao layer");
			return user;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null && con != null) {
					ps.close();
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return user;
	}

	@Override
	public List<UserDTO> showUsers() {
		List<UserDTO> userList = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DbConnection.establiConnection();
			ps = con.prepareStatement("select * from tbl_signup order by id");
			rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt(1);
				String n = rs.getString(2);
				String e = rs.getString(3);
				String p = rs.getString(4);
				String a = rs.getString(5);
				UserDTO user = new UserDTO(id, n, e, p, a);
				userList.add(user);
			}
			return userList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

}
