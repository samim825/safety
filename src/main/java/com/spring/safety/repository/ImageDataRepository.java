package com.spring.safety.repository;

import com.spring.safety.model.ImageData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ImageDataRepository extends JpaRepository<ImageData, String> {

    Optional<ImageData> findByName(String fileName);
}
