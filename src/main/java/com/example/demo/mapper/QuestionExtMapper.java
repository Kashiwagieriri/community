package com.example.demo.mapper;

import com.example.demo.model.Question;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QuestionExtMapper {
    int incView(Question record);
}