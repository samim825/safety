package com.spring.safety.controller;

import com.spring.safety.service.impl.ImageDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequestMapping("/images")
public class ImageController {

    @Autowired
    private ImageDataService service;

    @PostMapping
    public ResponseEntity<?> uploadImageToDatabase(@RequestParam("image")MultipartFile file) throws IOException {

        return ResponseEntity.status(HttpStatus.OK)
                .body(service.uploadImage(file));

    }

    @GetMapping("/{fileName}")
    public ResponseEntity<?> downloadFromDatabase(@PathVariable String fileName){

        return ResponseEntity.status(HttpStatus.OK)
                .contentType(MediaType.valueOf("image/png"))
                .body(service.downloadImage(fileName));
    }

    @PostMapping("/upload")
    public ResponseEntity<?> uploadImageToFile(@RequestParam("file")MultipartFile file) throws IOException {

        return ResponseEntity.status(HttpStatus.OK)
                .body(service.uploadImageToFile(file));

    }

    @GetMapping("/file/{fileName}")
    public ResponseEntity<?> downloadFromFile(@PathVariable String fileName) throws IOException {

        return ResponseEntity.status(HttpStatus.OK)
                .contentType(MediaType.valueOf("image/png"))
                .body(service.downloadImageFromFile(fileName));
    }
}
