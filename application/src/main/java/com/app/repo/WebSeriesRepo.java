package com.app.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.model.WebSeriesModel;

@Repository
public interface WebSeriesRepo extends JpaRepository<WebSeriesModel, Integer>{

	List<WebSeriesModel> findByName(String name);
   


}
