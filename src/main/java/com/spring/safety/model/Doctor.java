package com.spring.safety.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Doctor {

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    private String id;

    private String Name;

    private String email;

    private String details;

    private String availableTime;

    private String offDay;

    private String departmentId;

    private String departmentName;

    private String hospitalId;

    private String hospitalName;
//    private String imagePath;

//    @Enumerated(EnumType.STRING)
//    private GenderType gender;
//
//    private String facebookLink;
//
//    private String instagramLink;
//
//    private String linkedInLink;

}
