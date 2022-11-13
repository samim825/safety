package com.spring.safety.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.GenericGenerators;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Message {

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator( name = "uuid2" , strategy = "uuid2")
    private String id;

    private String name;

    private String email;

    private String subject;

    private String message;

}
