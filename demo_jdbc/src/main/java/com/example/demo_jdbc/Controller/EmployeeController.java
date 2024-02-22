package com.example.demo_jdbc.Controller;

import com.example.demo_jdbc.Model.Department;
import com.example.demo_jdbc.Model.Employee;
import com.example.demo_jdbc.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;


    @RequestMapping("/")
    public String index() {
        return "index";
    }
    @RequestMapping("/addEmployee")
    public String add(ModelMap model){
        //Employee employee = new Employee();
        Department department=new Department();
        //model.put("employee",employee);
        model.put("department",department);
        return "addEmployee";
    }
    @RequestMapping("/addEmployeeResult")
    public String store(@ModelAttribute("department")@RequestBody Department department){
        return employeeService.store(department);
    }
    /*@RequestMapping("/addEmployeeResult")
    public String add(@ModelAttribute("employee")@RequestBody Employee employee){
        return employeeService.add(employee);
    }*/

    @RequestMapping("/delete")
    public String delete(){
        return "delete";
    }

    @RequestMapping("/update")
    public String update(){
        return "update";
    }
    /*@RequestMapping("/updateDetails")
    public String updateDetails(@RequestParam("id") int id, ModelMap model){
        Employee empUpd = employeeService.getEmployee(id);
        if(empUpd == null){
            return "notFound";
        }
        model.put("empUpd",empUpd);
        return "updateDetails";
    }*/
    @RequestMapping("/updateDetails")
    public String updateDetails(@RequestParam("Did") int Did, ModelMap model){
        Department empUpd = employeeService.getDepartment(Did);
        if(empUpd == null){
            return "notFound";
        }
        model.put("empUpd",empUpd);
        return "updateDetails";
    }

    /*@GetMapping("/Employee/delete")
    public String delete(@RequestParam("id") int id,ModelMap model){
        Employee empDel = employeeService.delete(id);
        model.put("empDel",empDel);
        return "deleted";
    }*/
    @GetMapping("/Employee/delete")
    public String delete(@RequestParam("Did") int Did,ModelMap model){
        Department empDel = employeeService.delete1(Did);
        System.out.println(empDel);
        model.put("empDel",empDel);
        return "deleted";
    }

    @GetMapping("/Employee/get")
    public String get(@RequestParam("id") int id, ModelMap model){
        Employee empGet = employeeService.getEmployee(id);
        model.put("empGet",empGet);
        return "found";
    }
    /*@GetMapping("/all")
    public String getAll(ModelMap model){
        List<Employee> employees = employeeService.employees();
        model.put("employees",employees);
        return "all";
    }*/

    @GetMapping("/all")
    public String getAll(ModelMap model){
        List<Department> departments = employeeService.departments();
        model.put("departments",departments);
        return "all";
    }
    /*@PostMapping("/Employee/update")
    public String update(@ModelAttribute("empUpd")@RequestBody Employee employee,ModelMap model){
        Employee empUpdate = employeeService.update(employee);
        model.put("empUpdate",empUpdate);
        return "updated";
    }*/
    @PostMapping("/Employee/update")
    public String update(@ModelAttribute("empUpd")@RequestBody Department department,ModelMap model){
        Department empUpdate = employeeService.update1(department);
        model.put("empUpdate",empUpdate);
        return "updated";
    }


}

