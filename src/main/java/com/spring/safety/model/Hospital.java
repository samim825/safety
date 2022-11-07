package com.spring.safety.model;

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
public class Hospital {

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    private String id;

    private String hospitalName;

    private String tagline;

    private String address;

    private String duplicateEmail;

    private String phoneNumber;

    private String duplicatePhoneNumber;

    @OneToOne(mappedBy = "hospital")
    @ToString.Exclude
    private User user;

}
