package com.spring.safety.repository;

import com.spring.safety.model.Department;
import com.spring.safety.model.Hospital;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, String> {

    @Transactional
    @Modifying
    @Query("Delete from Department d where d.id = ?1")
    void deletePostById(String id);

    List<Department> findDepartmentByHospitalId(Hospital hospitalId);
}
