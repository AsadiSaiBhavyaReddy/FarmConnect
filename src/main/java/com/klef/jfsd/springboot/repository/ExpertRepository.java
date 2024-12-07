package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Expert;

@Repository
public interface ExpertRepository extends JpaRepository<Expert, Integer> {
  
  @Query("select e from Expert e where e.email = ?1 and e.password = ?2")
  public Expert checkexpertLogin(String email,String password);
}
