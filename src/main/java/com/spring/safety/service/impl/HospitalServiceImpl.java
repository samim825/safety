package com.spring.safety.service.impl;

import com.spring.safety.model.Hospital;
import com.spring.safety.repository.HospitalRepository;
import com.spring.safety.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HospitalServiceImpl implements HospitalService {

    @Autowired
    private HospitalRepository hospitalRepository;

    @Override
    public Hospital save(Hospital hospital) {
        return hospitalRepository.save(hospital);
    }

    @Override
    public Hospital update(Hospital hospital) {
        return hospitalRepository.save(hospital);
    }

    @Override
    public Optional<Hospital> findById(String id) {
        return hospitalRepository.findById(id);
    }

    @Override
    public void delete(String id) {
        hospitalRepository.deleteById(id);
    }

    @Override
    public List<Hospital> getAllHospitals() {
        return hospitalRepository.findAll();
    }

}
