package com.springbootproject.todoproject.Todo;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Size;

@Entity
public class Todo {

    @Id
    private int id;
    @Size(min = 5, message = "Enter atleast 5 characters description")
    private String description;
    private LocalDate date;

    public Todo() {
    }

    public Todo(int id, String description, LocalDate date) {
        this.id = id;
        this.description = description;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Todo [id=" + id + ", description=" + description + ", date=" + date + "]";
    }

}