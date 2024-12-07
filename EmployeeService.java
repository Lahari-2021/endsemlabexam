package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;

public interface EmployeeService {
	public String EmployeeRegistration(Employee employee);
	
	public Employee checkemplogin(String email,String pwd); 
    public String updateemp(Employee e);
    public List<Employee> displayEmpsByDepartment(String dept);
}
