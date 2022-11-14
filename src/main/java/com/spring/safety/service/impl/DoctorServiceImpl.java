package com.spring.safety.service.impl;

import com.spring.safety.model.Doctor;
import com.spring.safety.repository.DoctorRepository;
import com.spring.safety.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorServiceImpl implements DoctorService {

    @Autowired
    private DoctorRepository doctorRepository;

    @Override
    public Doctor save(Doctor doctor) {
        return doctorRepository.save(doctor);
    }

    @Override
    public Doctor update(Doctor doctor) {
        return doctorRepository.save(doctor);
    }

    @Override
    public Doctor findById(String id) {
        return doctorRepository.findById(id).get();
    }

    @Override
    public List<Doctor> findAllDoctors() {
        return doctorRepository.findAll();
    }

    @Override
    public List<Doctor> findAllDoctorsByHospital(String id) {
        return doctorRepository.findDoctorByHospitalId(id);
    }

    @Override
    public void delete(String id) {

    }
}
