/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author duan1
 */
public class AccountDAOIplm implements AccountDAO{
 public static void main(String[] args) {
        AccountDAOIplm dao = new AccountDAOIplm();
       System.out.println(dao.checkAccountExists("user1", "123"));
    }
    @Override
    public boolean checkAccountExists(String account, String pass){
       boolean flag=false;
        try {
            Connection conn = new  DBContext().getConnection();
            
            String sql="SELECT [acc_id]\n" +
"      ,[username]\n" +
"      ,[password]\n" +
"      ,[email]\n" +
"      ,[role_id]\n" +
"  FROM [ChildrenCare].[dbo].[Account] where username = ? and password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, account);
		ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				flag=true;
			}
			else {
				flag=false;
			}
        } catch (Exception ex) {
            Logger.getLogger(AccountDAOIplm.class.getName()).log(Level.SEVERE, null, ex);
        }
        return flag;
              
    }
    
}
