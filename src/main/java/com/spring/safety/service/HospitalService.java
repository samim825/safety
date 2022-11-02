package com.spring.safety.service;

import com.spring.safety.model.Hospital;

import java.util.List;

public interface HospitalService {

    Hospital save(Hospital hospital);

    Hospital update(Hospital hospital);

    Hospital findById(String id);

    void delete(String id);

    List<Hospital> getAllHospitals();
}
