package com.spring.safety.service;

import com.spring.safety.model.Hospital;

import java.util.List;
import java.util.Optional;

public interface HospitalService {

    Hospital save(Hospital hospital);

    Hospital update(Hospital hospital);

    Optional<Hospital> findById(String id);

    void delete(String id);

    List<Hospital> getAllHospitals();
}
