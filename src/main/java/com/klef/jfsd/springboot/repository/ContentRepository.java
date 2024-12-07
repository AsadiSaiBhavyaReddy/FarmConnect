package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Content;

public interface ContentRepository extends JpaRepository<Content, Integer>{

}
