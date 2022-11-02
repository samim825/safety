package com.spring.safety.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
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

    private String firstName;

    private String lastName;

    private String phoneNumber;

    private String email;

    private String imagePath;

    @Enumerated(EnumType.STRING)
    private GenderType gender;

    private String facebookLink;

    private String instagramLink;

    private String linkedInLink;

}
