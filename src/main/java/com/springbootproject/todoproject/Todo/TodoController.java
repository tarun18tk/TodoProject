package com.springbootproject.todoproject.Todo;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.validation.Valid;

@Controller
public class TodoController {

    @Autowired
    TodoRepository service;

    int count = 5;

    public TodoController(TodoRepository service) {
        this.service = service;
    }

    /*
     * Lets make a list of ToDos and fill it up with values
     * from the database and show in the output as JSP page
     */

    @GetMapping("/list-todos")
    public String getTodos(ModelMap model) {
        List<Todo> todos = service.findAll();
        model.addAttribute("todos", todos);
        return "listTodos";
    }

    /* both methods work, either use @RequestParam or @PathVariable, URL is diff */
    // @GetMapping("delete-todo")
    // public String deleteTodos(@RequestParam int id){
    // service.deleteById(id);
    // return "redirect:list-todos";
    // }

    @GetMapping("delete-todo/{id}")
    public String deleteTodos(@PathVariable int id) {
        service.deleteById(id);

        return "redirect:/list-todos";
    }

    @GetMapping("add-todo")
    public String showNewTodoPage(ModelMap model) {
        Todo todo = new Todo(count++, "default value from spring", LocalDate.now());
        model.addAttribute("todo", todo);
        return "newTodo";
    }

    @PostMapping("add-todo")
    public String addNewTodo(@Valid Todo todo, BindingResult res) {

        if (res.hasErrors()) {
            return "newTodo";
        }
        // todo.setId(count);
        service.save(todo);
        return "redirect:list-todos";
    }

    @GetMapping("update-todo")
    public String updateTodo(@RequestParam int id, ModelMap model) throws Exception {
        // here we are adding the object to model so that we can retrieve its info in
        // the update page
        Todo newTodo = service.findById(id).get();

        model.addAttribute("todo", newTodo);
        service.deleteById(id);
        return "newTodo";
    }

    @PostMapping("update-todo")
    public String updateNewTodo(@Valid Todo todo, BindingResult res) throws Exception {

        if (res.hasErrors()) {
            return "newTodo";
        }

        service.save(todo);
        return "redirect:list-todos";
    }

}
