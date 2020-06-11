package com.softcon.todomanagement.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softcon.todomanagement.model.Todo;

public interface TodoRepository extends JpaRepository<Todo, Long>{
	List<Todo> findByUserName(String user);
	List<Todo> findByDescription(String desc);
}
