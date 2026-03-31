package com.mvc.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(InvalideDataCredentialException.class)
    public String handleCustom(InvalideDataCredentialException ex, Model m) {

        m.addAttribute("msg", ex.getMessage());

        return "errorPage";
    }


    @ExceptionHandler(Exception.class)
    public String handleAll(Exception ex, Model m) {

        m.addAttribute("msg", ex.getMessage());

        return "errorPage";
    }

}