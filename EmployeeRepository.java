package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;

import jakarta.transaction.Transactional;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
	
	@Query("select e from  Employee e where e.email=?1 and e.password=?2 ")
	public Employee checkemplogin(String email,String pwd);
	 //reference
	@Query("update Employee e set e.status=?1 where e.id=?2")
	@Modifying //DML - update,delete,insert and select
	@Transactional //auto commit
	public int updateempstatus(String status,int eid);//it should be called in admin service

	   
		@Query("delete from Employee e where e.id=?1")
		@Modifying//DML
		@Transactional//auto commit
		public int deleteempbyid(int eid);
		public List<Employee> findByDepartment(String department);

}
