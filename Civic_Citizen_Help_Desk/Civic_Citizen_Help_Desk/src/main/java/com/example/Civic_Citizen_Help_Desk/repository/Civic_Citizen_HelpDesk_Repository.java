package com.example.Civic_Citizen_Help_Desk.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.Civic_Citizen_Help_Desk.entity.Civic_HelpDeskEntity;

public interface Civic_Citizen_HelpDesk_Repository extends JpaRepository<Civic_HelpDeskEntity, Integer> {

    boolean existsByEmail(String email);

    boolean existsByMobile(String mobile);

    boolean existsByAadhar(String aadhar);

    @Query("SELECT COUNT(c) FROM Civic_HelpDeskEntity c WHERE c.email = :email AND c.password = :password")
    long countByEmailAndPassword(@Param("email") String email, @Param("password") String password);

    Civic_HelpDeskEntity findByEmail(String email);
    
}
