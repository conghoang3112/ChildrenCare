/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import entity.Specialist;
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
public class Specialist1DAOIplm implements SpecialistDAO1{
    public static void main(String[] args) {
        SpecialistDAO1 dao = new Specialist1DAOIplm();
        dao.getALlSpecialist();
        System.out.println(dao.getALlSpecialist());
    }
    @Override
    public List<Specialist> getALlSpecialist() {
        List<Specialist> specialist = new ArrayList<>();
        
        try {
            Connection conn= new DBContext().getConnection();
            String sql ="SELECT [specialist_id]\n" +
"      ,[specialist_name]\n" +
"  FROM [ChildrenCare].[dbo].[Specialist] ";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                
                specialist.add(new Specialist(rs.getInt(1), rs.getString(2)));
                
            }
        } catch (Exception ex) {
            Logger.getLogger(Specialist1DAOIplm.class.getName()).log(Level.SEVERE, null, ex);
        }
        return specialist;
    }
    
}
