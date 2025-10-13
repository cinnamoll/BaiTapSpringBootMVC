package com.example.repository;

import com.example.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository // đánh dấu class làm repo, dùng để thực hiện các thao tác trên db
public interface CourseRepository extends JpaRepository<Course, Long> {
}