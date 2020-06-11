package com.softcon.todomanagement.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.softcon.todomanagement.model.Todo;
import com.softcon.todomanagement.service.TodoService;

@RestController
public class TodoRestController {	
	@Autowired
	private TodoService todoService;
	
	@RequestMapping("/todos")
	public List<Todo> getAllTodos(){
		return todoService.getAllTodos();
	}
	
	@RequestMapping("/{user}")
	public List<Todo> getTodosByUser(@PathVariable(value = "user") String user) {
		return todoService.getTodosByUser(user);
	}
	
	@RequestMapping("/todos/{desc}")
	public List<Todo> getTodoByDescription(@PathVariable(value = "desc") String desc) {
		return todoService.getTodoByDescription(desc);
	}
	
	
	
}