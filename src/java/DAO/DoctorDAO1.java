/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Doctor;
import java.util.List;

/**Doctor
 *
 * @author duan1
 */
public interface DoctorDAO1 {
    List<Doctor> getALlDOctorbyId(int id);
}
