/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import entity.Doctor;
import entity.Patient;
import entity.Reservation;
import entity.TimeSlot;
import entity.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ReservationDAO extends DBContext {

    public List<Reservation> getAll() {
        List<Reservation> reservations = new ArrayList<>();
        String sql = "SELECT [reservation_id]\n"
                + "      ,[time_slot_id]\n"
                + "	  ,t.[slot_time]\n"
                + "      ,r.[doctor_id]\n"
                + "	  ,df.[first_name] AS [dfirst_name]\n"
                + "	  ,df.[last_name] AS [dlast_name]\n"
                + "      ,[date_booking]\n"
                + "      ,[phone_contact]\n"
                + "      ,[status]\n"
                + "      ,[issue]\n"
                + "      ,r.[user_id]\n"
                + "	  ,u.[first_name] AS [ufirst_name]\n"
                + "	  ,u.[last_name] AS [ulast_name]\n"
                + "      ,[patient_id]\n"
                + "FROM [Reservation] r\n"
                + "JOIN [TimeSlot] t ON r.[time_slot_id] = t.[slot_id]\n"
                + "JOIN [DoctorProfile] df ON r.[doctor_id] = df.[doctor_id]\n"
                + "JOIN [User] u ON r.[user_id] = u.[user_id]";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Doctor doctor = new Doctor();
                doctor.setId(rs.getInt("doctor_id"));
                User user = new User();
                user.setId(rs.getInt("user_id"));
                Patient patient = new Patient();
                patient.setId(rs.getInt("patient_id"));
                reservations.add(new Reservation(
                        rs.getInt("reservation_id"),
                        new TimeSlot(rs.getInt("time_slot_id"), rs.getString("slot_time")),
                        doctor,
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        user,
                        patient));

            }
        } catch (Exception e) {
        }
        return reservations;
    }
}
