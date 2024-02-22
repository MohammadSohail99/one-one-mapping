package com.example.demo_jdbc.Service;

import com.example.demo_jdbc.Model.Department;
import com.example.demo_jdbc.Model.Employee;

import java.util.List;

public interface EmployeeServiceInt {
    public String add(Employee employee);
    public Employee update(Employee employee);

    Department update1(Department department);

    public Employee getEmployee(int id);
    public Department getDepartment(int id);
    public Employee delete(int id);
    public List<Employee> employees();
    public Employee search(int id);

    List<Employee> deleteByName(String name);
    List<Department>departments();
    public Department delete1(int id);
}

