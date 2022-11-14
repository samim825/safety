package com.spring.safety.service;

import com.spring.safety.model.Doctor;

import javax.print.Doc;
import java.util.List;


public interface DoctorService {

    Doctor save(Doctor doctor);

    Doctor update(Doctor doctor);

    Doctor findById(String id);

    List<Doctor> findAllDoctors();

    List<Doctor> findAllDoctorsByHospital(String id);

    void delete(String id);
}
