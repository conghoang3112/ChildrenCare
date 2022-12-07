/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Pharmacy;


public class PharmacyDBContext extends DBContext<Pharmacy> {

    @Override
    public ArrayList<Pharmacy> list() {
        ArrayList<Pharmacy> pharmacys = new ArrayList<>();
        try {
            String sql = "SELECT pharmacy_id, name FROM Pharmacy";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Pharmacy p = new Pharmacy();
                p.setId(rs.getInt("pharmacy_id"));
                p.setName(rs.getString("name"));
                pharmacys.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PharmacyDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pharmacys;
    }

    @Override
    public void insert(Pharmacy model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Pharmacy model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Pharmacy model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
