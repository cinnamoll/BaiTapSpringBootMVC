package com.example.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor; 
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // gen construcor ko arg
@AllArgsConstructor
@Data // gen setter, getter, toString, equal, hashCode
@Entity // class có thể map đến table 
@Table(name = "courseData") // tên db dùng
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "course_name")
    private String courseName;

    @Column(name = "instructor")
    private String instructor;

    @Column(name = "email")
    private String email;
}