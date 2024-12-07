package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Query;

public interface QueryrRepository extends JpaRepository<Query, Integer>{

}
