package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.ReplyQuery;

@Repository
public interface ReplyQueryRepository extends JpaRepository<ReplyQuery, Integer> {
    // Custom query methods (if any) can be added here
}

