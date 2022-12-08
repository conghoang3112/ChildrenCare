/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import entity.TimeSlot;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author duan1
 */
public class TimeDAOIpml1 implements TimeDAO1{
    public static void main(String[] args) {
        TimeDAOIpml1 dao = new TimeDAOIpml1();
        System.out.println(dao.getAllTimeSlot());
    }
    @Override
    public List<TimeSlot> getAllTimeSlot() {
        List<TimeSlot> specialist = new ArrayList<>();
        
        try {
            Connection conn= new DBContext().getConnection();
            String sql ="SELECT [slot_id]\n" +
"      ,[slot_time]\n" +
"  FROM [ChildrenCare].[dbo].[TimeSlot]";
                Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                
                specialist.add(new TimeSlot(rs.getInt(1), rs.getString(2)));
                
            }
        } catch (Exception ex) {
            Logger.getLogger(Specialist1DAOIplm.class.getName()).log(Level.SEVERE, null, ex);
        }
        return specialist;
    }
    
}
