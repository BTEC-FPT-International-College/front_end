package com.btecland.web.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.btecland.web.model.ProfileModel;

public class ProfileDao {
	public ArrayList<ProfileModel> getListProfile() {
        ArrayList<ProfileModel> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT fullname, phone, email, address, date_of_birth, reward_point, gender FROM web.tbl_user WHERE userid = 'US000001' ");
            ProfileModel acc = null;
            while (rs.next()) {
                acc = new ProfileModel();
                //acc.setUserID(rs.getString(1));
                acc.setFullname(rs.getString(1));
                acc.setPhone(rs.getString(2));
                acc.setEmail(rs.getString(3));
                acc.setAddress(rs.getString(4));
                acc.setDateofbirth(rs.getString(5));
                acc.setRewardpoint(rs.getInt(6));
                acc.setGender(rs.getString(7));
                list.add(acc);
            }
            rs.close();
            stm.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return list;
    }
}
