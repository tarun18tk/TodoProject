package com.springbootproject.todoproject.Todo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TodoController {
    @Autowired
    TodoRepository service;

    public TodoController(TodoRepository service) {
        this.service = service;
    }

    /*
     * Lets make a list of ToDos and fill it up with values
     * from the database and show in the output as json data
     */
    @GetMapping("/list-todos")
    public String getTodos(ModelMap model) {
        List<Todo> todos = service.findAll();
        model.addAttribute("todos", todos);
        return "listTodos";
    }

    /* Now lets make a JSP response page, view=jsp */

}
