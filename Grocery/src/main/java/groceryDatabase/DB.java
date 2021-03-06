package groceryDatabase;

import java.sql.*;
import java.io.*;
import java.util.*;

public class DB {
	static Connection conn = null; 
	public DB() {
		if (conn == null) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","57489");
	 			System.out.println("connected");
			} catch (Exception e){
				System.out.println("Error occured: " + e.getMessage());
			}
		}
	}
	
	public String login(String phoneNo, String pass) {
		try {
			Statement st = conn.createStatement();
			String query = "select password from allusers where phoneNo='%s'";
			ResultSet rs = st.executeQuery(query.formatted(phoneNo, pass));
			rs.next();
			try {
				String passRecieved = rs.getString(1);
				if(passRecieved.equals(pass)) {
					return "Login Success";
				} else {
					return "Wrong Password";
				}
				
			} catch (SQLException e) {
				return "Account not found";
			}finally {
				st.close();
			}
			
		} catch (Exception e) {
			return "Error occured: " + e.getMessage().trim();
		} 
	}
	
	public String register(String phoneNo, String pass, String firstName, String lastName) {
		try {
			Statement st = conn.createStatement();
			String query = "insert into allusers(phoneNo, password, firstName, lastName) values('%s','%s','%s','%s')";
			st.executeUpdate(query.formatted(phoneNo, pass, firstName, lastName));
			st.close();
			return "registration successul";
		} catch (Exception e) {
			return e.getLocalizedMessage().trim();
		}
	}
	
	public String getProducts(String Category, String Subcategory, String search, String productID) {
		try {
			Statement st = conn.createStatement();
			List<Map<String, String>> list = new ArrayList<Map<String, String>>();
			String query;
			ResultSet rs;
			if (productID != null) {
				query = "select productID,productName,productPrice,productRating,productDiscount,productExp,productWeight,productSeller,productBrand,manufacturedAddress,productCategory,productSubcategory from allproducts where productid = '%s'";
				rs = st.executeQuery(query.formatted(productID));
			}
			else if (search != null){
				query = "select productID,productName,productPrice,productRating,productDiscount,productExp,productWeight,productSeller,productBrand,manufacturedAddress,productCategory,productSubcategory from allproducts where lower(productname) like lower('%" + search + "%')";
				rs = st.executeQuery(query);
			}
			else if(Subcategory.equals("All")) {
				query = "select productID,productName,productPrice,productRating,productDiscount,productExp,productWeight,productSeller,productBrand,manufacturedAddress,productCategory,productSubcategory from allproducts where productcategory = '%s'";
				rs = st.executeQuery(query.formatted(Category));
			} else{
				query = "select productID,productName,productPrice,productRating,productDiscount,productExp,productWeight,productSeller,productBrand,manufacturedAddress,productCategory,productSubcategory from allproducts where productsubcategory = '%s'";
				rs = st.executeQuery(query.formatted(Subcategory));
			}
			while(rs.next()) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("\"productID\"", '"' + rs.getString(1) + '"');
				map.put("\"productName\"", '"' + rs.getString(2) + '"');
				map.put("\"productPrice\"", '"' + rs.getString(3) + '"');
				map.put("\"productRating\"", '"' + rs.getString(4) + '"');
				map.put("\"productDiscount\"", '"' + rs.getString(5) + '"');
				map.put("\"productExp\"", '"' + rs.getString(6) + '"');
				map.put("\"productWeight\"", '"' + rs.getString(7) + '"');
				map.put("\"productSeller\"", '"' + rs.getString(8) + '"');
				map.put("\"productBrand\"", '"' + rs.getString(9) + '"');
				map.put("\"manufacturedAddress\"", '"' +  rs.getString(10) + '"');
				map.put("\"productCategory\"", '"' + rs.getString(11) + '"');
				map.put("\"productSubcategory\"", '"' + rs.getString(12) + '"');
				list.add(map);
			}
			String json =list.toString().replaceAll("=", ":"); 
			
			st.close();
			return json;
			
			
		} catch (Exception e) {
			System.out.println("Error occured: " + e.getMessage());
			return null;
		}
	}
	
	public void cartAdd(String phoneNo, String productID, String quantity) {
		try {
			Statement st = conn.createStatement();
			String query = "insert into cart values ('%s', '%s', '%s')";
			st.executeUpdate(query.formatted(phoneNo, productID, quantity));
			st.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	public void cartRemove(String phoneNo, String productID) {
		try {
			Statement st = conn.createStatement();
			String query = "delete from cart where phoneno='%s' and productid='%s'";
			st.executeUpdate(query.formatted(phoneNo, productID));
			st.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	public String cartGet(String phoneNo) {
		try {
			Statement st = conn.createStatement();
			String query = "select productid, quantity from cart where phoneno='%s'";
			ResultSet rs = st.executeQuery(query.formatted(phoneNo));
			List<Map<String, String>> list = new ArrayList<Map<String, String>>();
			while (rs.next()) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("\"productID\"", '"' + rs.getString(1) + '"');
				map.put("\"quantity\"", '"' + rs.getString(2) + '"');
				list.add(map);
			}
			String json =list.toString().replaceAll("=", ":"); 
			st.close();
			return json;
		} catch (Exception e) {
			System.out.println(e.toString());
			return null;
		}
	}
	
	
	public void orderRemove(String phoneNo, String productID) {
		try {
			Statement st = conn.createStatement();
			String query = "delete from orders where phoneno='%s' and productid='%s'";
			st.executeUpdate(query.formatted(phoneNo, productID));
			st.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	public String ordersGet(String phoneNo) {
		try {
			Statement st = conn.createStatement();
			String query = "select productid, quantity, dop, status from orders where phoneno='%s'";
			ResultSet rs = st.executeQuery(query.formatted(phoneNo));
			List<Map<String, String>> list = new ArrayList<Map<String, String>>();
			while (rs.next()) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("\"productID\"", '"' + rs.getString(1) + '"');
				map.put("\"quantity\"", '"' + rs.getString(2) + '"');
				map.put("\"date\"", '"' + rs.getString(3) + '"');
				map.put("\"status\"", '"' + rs.getString(4) + '"');
				list.add(map);
			}
			String json =list.toString().replaceAll("=", ":"); 
			return json;
		} catch (Exception e) {
			System.out.println(e.toString());
			return null;
		}
	}
	
	public String getUserDetails(String phoneNo) {
		try {
			Statement st = conn.createStatement();
			String query = "select * from allusers where phoneno='%s'";
			ResultSet rs = st.executeQuery(query.formatted(phoneNo));
			List<Map<String, String>> list = new ArrayList<Map<String, String>>();
			while (rs.next()) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("\"phoneNo\"", '"' + rs.getString(1) + '"');
				map.put("\"password\"", '"' + rs.getString(2) + '"');
				map.put("\"firstName\"", '"' + rs.getString(3) + '"');
				map.put("\"lastName\"", '"' + rs.getString(4) + '"');
				map.put("\"email\"", '"' + rs.getString(5) + '"');
				map.put("\"gender\"", '"' + rs.getString(6) + '"');
				map.put("\"address\"", '"' + rs.getString(7) + '"');
				list.add(map);
			}
			String json =list.toString().replaceAll("=", ":"); 
			st.close();
			return json;
		} catch (Exception e) {
			System.out.println(e.toString());
			return null;
		}
	}
	
	public void setUserDetails(String phoneNo, String newPhoneNo, String firstName, String lastName, String email, String gender, String address) {
		try {
			Statement st = conn.createStatement();
			String query;
			if (newPhoneNo != null) {
				query = "update all users set phoneno = '%s' where phoneNo='%s'";
				st.executeUpdate(query.formatted(newPhoneNo, phoneNo));
			}
			if (firstName != null) {
				query = "update all users set firstname = '%s' where phoneNo='%s'";
				st.executeUpdate(query.formatted(firstName, phoneNo));
			}
			if (lastName != null) {
				query = "update all users set lastname = '%s' where phoneNo='%s'";
				st.executeUpdate(query.formatted(lastName, phoneNo));
			}
			if (email != null) {
				query = "update all users set email = '%s' where phoneNo='%s'";
				st.executeUpdate(query.formatted(email, phoneNo));
			}
			if (gender != null) {
				query = "update all users set gender = '%s' where phoneNo='%s'";
				st.executeUpdate(query.formatted(gender, phoneNo));
			}
			if (address != null) {
				query = "update all users set address = '%s' where phoneNo='%s'";
				st.executeUpdate(query.formatted(address, phoneNo));
			}
			st.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	public void cartModifyQuantity(String phoneNo, String productID, String quantity) {
		try {
			Statement st = conn.createStatement();
			String query = "update cart set quantity = '%s' where phoneno = '%s' and productid = '%s'";
			st.executeUpdate(query.formatted(quantity, phoneNo, productID));
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	public void orderAdd(String phoneNo, String productID, String quantity, String date, String status) {
		try {
			Statement st = conn.createStatement();
			String query = "insert into orders values ('%s', '%s', '%s', '%s', '%s')";
			st.executeUpdate(query.formatted(phoneNo, productID, quantity, date, status));
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	//This is for profile image
	public void setUserImage(String phoneNo, String base64img) {
		try {
			byte[] decodedString = Base64.getDecoder().decode(base64img.getBytes("UTF-8"));
			FileOutputStream file = new FileOutputStream("E:\\Programming_Into\\Eclips\\GrocerySystem\\Grocery\\src\\main\\webapp\\img\\" + phoneNo + ".png");
			file.write(decodedString);
			file.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
}
