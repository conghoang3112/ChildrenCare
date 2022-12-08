/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import entity.Account;
import entity.Doctor;
import entity.Role;
import entity.Specialist;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author duan1
 */
public class DoctorDAOIplm1 implements DoctorDAO1{
    public static void main(String[] args) {
        DoctorDAO1 dao = new DoctorDAOIplm1();
        List<Doctor> dlist = dao.getALlDOctorbyId(2);
        for (Doctor doctor : dlist) {
            System.out.println(doctor+"/n");
        }
        
    }
    @Override
    public List<Doctor> getALlDOctorbyId(int id) {
        List<Doctor> dlist= new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT  [doctor_id]\n" +
"      ,[acc_id]\n" +
"      ,[specialist_id]\n" +
"  FROM [ChildrenCare].[dbo].[Doctor] where  specialist_id =?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps .executeQuery();
            while(rs.next()){
                
              Account account = new Account(rs.getInt(2));
                Specialist specialist = new Specialist(rs.getInt(3));
                dlist.add(new Doctor(rs.getInt(1),account,specialist));
            }
            
        } catch (Exception ex) {
            Logger.getLogger(DoctorDAOIplm1.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        return dlist;
        
    }
    
}
