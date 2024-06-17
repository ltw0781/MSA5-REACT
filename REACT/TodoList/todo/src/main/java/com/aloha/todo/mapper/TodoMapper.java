package com.aloha.todo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.aloha.todo.dto.Todo;

@Mapper
public interface TodoMapper {
    
    // Todo 리스트 목록
    public List<Todo> list() throws Exception;

    // Todo 리스트 조회
    public Todo select(int no) throws Exception;

    // Todo 리스트 등록
    public int insert(Todo todo) throws Exception;

    // Todo 리스트 수정
    public int update(Todo todo) throws Exception;

    // Todo 리스트 삭제
    public int delete(int no) throws Exception;

    // 전체 선택
    public int onCompleteAll () throws Exception;

    // 전체 삭제
    public int onRemoveAll() throws Exception;

}
