package com.example.demo.exception;

public enum CustomizeErrorCode implements ICustomizeErrorCode {

    QUESTION_NOT_FOUND(2001, "问题不存在"),
    TARGET_PARAM_NOT_FOUND(2002, "未选中任何问题或评论进行回复"),
    NO_LOGIN(2003, "请登陆后重试"),
    SYS_ERROR(2004, "服务错误，请稍后访问"),
    TYPE_PARAM_WRONG(2005, "评论类型错误或不存在"),
    COMMENT_NOT_FOUND(2006, "该评论不存在"),
    CONTENT_ID_EMPTY(2007, "输入内容不能为空"),
    READ_NOTIFICATION_FAIL(2008, ""),
    NOTIFICATION_NOT_FOUND(2009, ""),;
    ;

    @Override
    public String getMessage() {
        return message;
    }

    @Override
    public Integer getCode() {
        return code;
    }

    private Integer code;
    private String message;

    CustomizeErrorCode(Integer code, String message) {
        this.message = message;
        this.code = code;
    }
}