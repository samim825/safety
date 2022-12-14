package com.spring.safety.repository;

import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.tags.form.SelectTag;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, String> {


    @Query("SELECT  u FROM User u  where u.email = ?1 and u.enabled = 1")
    User findEnabledUserByEmail(String email);

    User findByEmail(String email);

    @Query("SELECT u.hospital FROM User u WHERE u.enabled = 1 and u.email <> 'admin@gmail.com'")
    List<Hospital> findActiveHospital();

    @Query("SELECT u.hospital FROM User u WHERE u.enabled = 0 ")
    List<Hospital> findInActiveHospital();


    @Transactional
    @Modifying
    @Query("UPDATE User u SET u.enabled = 1  where u.hospital = ?1")
    void doActiveUser(Hospital hospital);

    @Transactional
    @Modifying
    @Query("UPDATE User u SET u.enabled = 0  where u.hospital = ?1")
    void doDeActiveUser(Hospital hospital);
}
