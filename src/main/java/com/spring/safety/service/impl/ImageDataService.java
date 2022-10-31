package com.spring.safety.service.impl;

import com.spring.safety.model.FileData;
import com.spring.safety.model.ImageData;
import com.spring.safety.repository.FileDataRepository;
import com.spring.safety.repository.ImageDataRepository;
import com.spring.safety.utils.ImageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Optional;

@Service
public class ImageDataService {


    @Autowired
    private ImageDataRepository repository;

    @Autowired
    private FileDataRepository fileDataRepository;

    private final String FOLDER_PATH = "/home/samimhossain/Pictures/Screenshots/";

    public String uploadImage(MultipartFile file) throws IOException {

        ImageData imageData =  repository.save(ImageData.builder()
                .name(file.getOriginalFilename())
                .type(file.getContentType())
                .imageData(ImageUtils.compressImage(file.getBytes()))
                .build());

        if(imageData != null){
            return "Image Successfully saved : "+file.getOriginalFilename();
        }

        return null;
    }

    @Transactional
    public byte[] downloadImage(String fileName){
        Optional<ImageData> dbImageData = repository.findByName(fileName);
        byte[] images=ImageUtils.decompressImage(dbImageData.get().getImageData());

        System.out.println("download image : "+images);
        return images;
    }

    public String uploadImageToFile(MultipartFile file) throws IOException {

        String filePath = FOLDER_PATH+file.getOriginalFilename();

//        FileData fileData =  fileDataRepository.save(FileData.builder()
//                .name(file.getOriginalFilename())
//                .type(file.getContentType())
//                .filePath(filePath)
//                .build());

        file.transferTo(new File(filePath));

        if(filePath != null){
            return "file Successfully saved : "+filePath;
        }

        return null;
    }


    @Transactional
    public byte[] downloadImageFromFile(String fileName) throws IOException {
        Optional<FileData> fileData = fileDataRepository.findByName(fileName);
        String filePath = fileData.get().getFilePath();
        byte[] images = Files.readAllBytes(new File(filePath).toPath());
        System.out.println("File path : "+filePath);
        System.out.println("images : "+images);
        return images;
    }

}
