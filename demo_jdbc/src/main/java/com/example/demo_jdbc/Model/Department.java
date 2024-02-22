package com.example.demo_jdbc.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity

public class Department {
    @Id
    private Integer Did;
    private String Dname;
    private String CoachName;

    public Department() {
    }

    public Department(Integer did, String dname, String coachName, Employee employee) {
        Did = did;
        Dname = dname;
        CoachName = coachName;
        this.employee = employee;
    }

    public Integer getDid() {
        return Did;
    }

    public void setDid(Integer did) {
        Did = did;
    }

    public String getDname() {
        return Dname;
    }

    public void setDname(String dname) {
        Dname = dname;
    }

    public String getCoachName() {
        return CoachName;
    }

    public void setCoachName(String coachName) {
        CoachName = coachName;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    /*@OneToOne
    @JoinColumn(name = "employee_id", referencedColumnName = "id")
    private Employee employee;*/
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "employee_id", referencedColumnName = "id")
    private Employee employee;
}
