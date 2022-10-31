package com.spring.safety.repository;

import com.spring.safety.model.FileData;
import com.spring.safety.model.ImageData;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface FileDataRepository extends JpaRepository<FileData, String> {

    Optional<FileData> findByName(String fileName);


}
