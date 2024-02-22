package com.example.demo_jdbc.EmployeeRepo;

import com.example.demo_jdbc.Model.Department;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartmentRepo extends JpaRepository<Department,Integer> {
}
