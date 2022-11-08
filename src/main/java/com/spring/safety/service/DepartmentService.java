package com.spring.safety.service;

import com.spring.safety.model.Department;
import com.spring.safety.model.Hospital;

import java.util.List;

public interface DepartmentService {

    Department save(Department department);

    Department update(Department department);

    Department findById(String id);

    List<Department> findDepartmentByHospital(Hospital hospital);
    List<Department> findAllDepartments();

    void delete(String id);
}
