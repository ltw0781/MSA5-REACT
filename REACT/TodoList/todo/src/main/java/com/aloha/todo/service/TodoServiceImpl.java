package com.aloha.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aloha.todo.dto.Todo;
import com.aloha.todo.mapper.TodoMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class TodoServiceImpl implements TodoService{

    @Autowired
    private TodoMapper todoMapper;

    @Override
    public List<Todo> list() throws Exception {
        List<Todo> todoList = todoMapper.list();
        return todoList;
    }

    @Override
    public Todo select(int no) throws Exception {
        Todo todo = todoMapper.select(no);
        return todo;
    }

    @Override
    public Todo insert(Todo todo) throws Exception {
        int result = todoMapper.insert(todo);
        log.info("1111111111todo : " + todo);
        log.info("2222222222todo : " + result);
        int newTodoNo = todo.getNo();
        Todo newTodo = todoMapper.select(newTodoNo);
        return newTodo;
    }

    @Override
    public int update(Todo todo) throws Exception {
        int result = todoMapper.update(todo);
        return result;
    }

    @Override
    public int delete(int no) throws Exception {
        int result = todoMapper.delete(no);
        return result;
    }

    @Override
    public int onCompleteAll() throws Exception {
        int result = todoMapper.onCompleteAll();
        return result;
    }

    @Override
    public int onRemoveAll() throws Exception {
        int result = todoMapper.onRemoveAll();
        return result;
    }
    
}
