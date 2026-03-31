package com.mvc.entity;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@Table(name = "student")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    // Name fields
    private String firstName;
    private String middleName;
    private String lastName;

    private String email;

    @Column(name = "college")
    private String collegeName;

    private String branch;
    private String gender;

    private Date dob;

    private int age;

    private String bloodGroup;

    private String nationality;

    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> courses;

    private String feedback;
    
    // embedded address
    @Embedded
    private Address address;



}
